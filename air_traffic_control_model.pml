#define HANGAR_SIZE 3
typedef Airplane {int id, timer; bool isLanding, isEmergency;};  // Airplane structure

mtype:e_operation = {takeoff, landing, parking, runway, emergency_takeoff, emergency_landing, emergency, null};  // Operation type
mtype:e_status = {plane_request, tower_reply, plane_waiting, lock, finish};  // Status type

chan hangar = [HANGAR_SIZE] of {int};  // Hangar channel: plane_id

// Channel definitions
chan c_request_operation = [10] of {int, mtype:e_operation};      // Airplane request landing, takeoff: plane_id
chan c_request_parking = [10] of {int};      // Airplane request parking: plane_id
chan c_request_emergency = [10] of {int, mtype:e_operation};    // Airplane request emergency landing: plane_id

chan c_reply_operation = [10] of {int, mtype:e_operation};        // Tower response to landing, takeoff: plane_id
chan c_reply_parking = [10] of {int};        // Tower response to parking: plane_id
chan c_reply_emergency = [10] of {int, mtype:e_operation};      // Tower response to emergency landing: plane_id

chan c_waiting_parking = [10] of {int};      // Waiting for parking: plane_id

chan c_plane_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Plane log: plane_id, operation, status
chan c_plane_request_log = [100] of {int, mtype:e_operation}; // Request log: plane_id, operation, status
chan c_plane_parking_log = [100] of {int, mtype:e_status}; // Parking log: plane_id, operation, status
chan c_plane_runway_log = [100] of {int, mtype:e_operation}; // Runway log: plane_id, operation, status
chan c_plane_parking_request_log = [100] of {int}; // Parking request log: plane_id, operation, status

chan c_tower_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Tower log: plane_id, operation, status
chan c_tower_reply_log = [100] of {int, mtype:e_operation}; // Reply log: plane_id, operation, status
chan c_tower_parking_reply_log = [100] of {int}; // Parking log: plane_id, operation, status

chan c_emergency_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Emergency log: plane_id, operation, status

// Runway availability (0 = free, 1 = occupied)
bool runway_occupied = false;  // 0 means free, 1 means occupied
bool parking_occupied = false; // 0 means free, 1 means occupied
bool emergency_occupied = false; // 0 means free, 1 means occupied
bool reply_channel_occupied = false; // 0 means free, 1 means occupied
bool parking_reply_channel_occupied = false; // 0 means free, 1 means occupied

inline RequestSubmit(id, op) {
    atomic {
        // Plane requests landing or takeoff
        if
        :: op == emergency_landing -> 
            c_request_emergency!id, emergency_landing;  // Request emergency landing
            printf("Plane %d: Request to emergency landing\n", id);

            c_plane_request_log!id, emergency_landing;  // Log the request
            c_plane_log!id, emergency_landing, plane_request;  // Log the request
            c_emergency_log!id, emergency_landing, plane_request;  // Log the request
            printf("Plane %d: Log emergency landing request\n", id);
            skip;

        :: op == emergency_takeoff ->
            c_request_emergency!id, emergency_takeoff;  // Request emergency takeoff
            printf("Plane %d: Request to emergency takeoff\n", id);

            c_plane_request_log!id, emergency_takeoff;  // Log the request
            c_plane_log!id, emergency_takeoff, plane_request;  // Log the request
            c_emergency_log!id, emergency_takeoff, plane_request;  // Log the request
            printf("Plane %d: Log emergency takeoff request\n", id);
            skip;

        :: op == landing -> 
            c_request_operation!id, landing;  // Request landing
            printf("Plane %d: Request to land\n", id); 

            c_plane_request_log!id, landing;  // Log the request
            c_plane_log!id, landing, plane_request;  // Log the request
            printf("Plane %d: Log landing request\n", id);
            skip;

        :: op == takeoff -> 
            c_request_operation!id, takeoff;  // Request takeoff
            printf("Plane %d: Request to takeoff\n", id);

            c_plane_request_log!id, takeoff;  // Log the request
            c_plane_log!id, takeoff, plane_request;  // Log the request
            printf("Plane %d: Log takeoff request\n", id);
            skip;

        :: op == parking ->
            c_request_parking!id; 
            printf("Plane %d: Request parking after %e\n", id, op);  // Request parking

            c_plane_request_log!id, parking;  // Log the request
            c_plane_log!id, parking, plane_request;  // Log the request
            c_plane_parking_request_log!id;  // Log the request
            printf("Plane %d: Log parking request\n", id);
            skip;
        fi;
    }
}

inline RunwayProcedures(id, plane_timer, op) {
    atomic {
        runway_occupied = true;
        
        c_plane_runway_log!id, op; // Log the runway lock
        c_plane_log!id, runway, lock; // Log the runway lock
        printf("Plane %d: Log runway lock\n", id);
        if
        :: op == emergency_landing -> 
            printf("Plane %d is using the runway for emergency landing\n", id);
            skip;

        :: op == emergency_takeoff -> 
            printf("Plane %d is using the runway for emergency take off\n", id);
            skip;

        :: op == landing -> 
            printf("Plane %d is using the runway for landing\n", id);
            skip;

        :: op == takeoff -> 
            printf("Plane %d is using the runway for take off\n", id);
            skip;
        fi
        
        // Simulate usage for a short time
        do
        :: plane_timer > 0 -> 
            printf("Plane %d: Timer %d (s) counts down 1s ...\n", id, plane_timer);  // Simulate runway usage
            plane_timer--; 
        :: else -> printf("Plane %d: Finish countdown\n", id); break;  // Wait for the "runway time" to expire
        od;

        printf("Plane %d: Has finished using the runway\n", id);
        
        runway_occupied = false;  // Runway becomes free
        printf("Plane %d: Has left the runway\n", id);

        if
            :: op == landing || op == emergency_landing -> 
                RequestSubmit(id, parking);  // Request parking after landing
            :: else -> skip;
        fi
    }
}

proctype RequestSubmitHandler(bool isLanding, isEmergency; int id) {
    atomic{    
        if
        :: isLanding && isEmergency -> 
            RequestSubmit(id, emergency_landing);  // Send emergency landing request to tower
            skip;

        :: !isLanding && isEmergency -> 
            RequestSubmit(id, emergency_takeoff);  // Send emergency takeoff request to tower
            skip;

        :: isLanding && !isEmergency -> 
            RequestSubmit(id, landing);  // Send request to tower
            skip;

        :: !isLanding && !isEmergency -> 
            RequestSubmit(id, takeoff);  // Send request to tower
            skip;
        fi; 
     }  
}

inline PlaneParking(id) {
    atomic {
        if
        :: len(hangar) < HANGAR_SIZE -> // If hangar is not full, park
            parking_occupied = true;
            c_plane_log!id, parking, lock; // Log the parking lock
            printf("Plane %d: Take parking lock\n", id);

            printf("Plane %d: Hangar size: %d\n", id, len(hangar));
            hangar!id;

            c_plane_parking_log!id, finish; // Log the parking request
            printf("Plane %d: Has parked. Increase hangar size: %d\n", id, len(hangar));
            parking_occupied = false;
            
        :: len(hangar) >= HANGAR_SIZE -> // If hangar is full, wait
            parking_occupied = true;
            c_plane_log!id, parking, lock; // Log the parking lock
            printf("Hangar is full, plane %d is waiting\n", id);

            c_waiting_parking!id;
            printf("Plane %d: Send parking request to waiting list\n", id);

            c_plane_log!id, parking, plane_waiting; // Log the waiting status
            c_plane_parking_log!id, plane_waiting; // Log the waiting status
            parking_occupied = false;
        fi
    }
}

proctype PlaneParkingReplyHandler(bool isParking; int id) {
    printf("Plane %d: ParkingReplyHandler\n", id);
    int temp_id = -1;
    do
    :: isParking && parking_reply_channel_occupied == false ->
        atomic {
            parking_reply_channel_occupied = true;
            c_reply_parking?<temp_id>; 
            parking_reply_channel_occupied = false; 
            if
            :: temp_id == id ->
                c_reply_parking?temp_id;
                printf("Plane %d: Clear queue parking reply", id); // Clear parking reply
                PlaneParking(temp_id);
                break;

            :: temp_id != id -> 
                printf("Plane %d: Waiting for parking reply", id); // Wait for parking reply
                skip;
            fi;
            skip;
        }
    :: isParking && parking_reply_channel_occupied == true -> skip; // If parking reply channel is occupied, wait
    :: !isParking -> break; // If not parking, exit
    od;
    
}

proctype RunwayProceduresHandler(bool isLanding, isEmergency; int id, plane_timer) {
    
        int temp_id = -1;
        mtype:e_operation temp_op;
        // Wait for permission from the tower
        do
        :: isLanding && isEmergency && emergency_occupied == false -> // If landing and emergency, wait for emergency landing permission
            atomic { 
                c_reply_emergency?<temp_id, temp_op>;
                if   
                :: temp_id == id && temp_op == emergency_landing -> 
                    emergency_occupied = true;
                    c_reply_emergency?id, emergency_landing; 
                    emergency_occupied = false;
                    printf("Plane %d: Clear queue emergency landing reply\n", id); 
                    break;

                ::  temp_id != id || temp_op != emergency_landing ->
                    printf("Plane %d: Waiting for emergency landing reply\n", id); 
                    skip;
                fi;
                skip;
            }
        :: !isLanding && isEmergency && emergency_occupied == false -> // If takeoff and emergency, wait for emergency takeoff permission
            atomic { 
                c_reply_emergency?<temp_id, temp_op>; 
                if
                :: id == temp_id && temp_op == emergency_takeoff -> 
                    emergency_occupied = true;
                    c_reply_emergency?id, emergency_takeoff; 
                    emergency_occupied = false;
                    printf("Plane %d: Clear queue emergency takeoff reply\n", id); 
                    break;

                :: temp_id != id || temp_op != emergency_takeoff -> 
                    printf("Plane %d: Waiting for emergency takeoff reply\n", id); 
                    skip;
                fi;
                skip;
            }

        :: isLanding && !isEmergency -> // If landing and not emergency, wait for landing permission
            atomic { 
                reply_channel_occupied = true;
                c_reply_operation?<temp_id, temp_op>;
                if 
                :: temp_id == id -> 
                    c_reply_operation?temp_id, temp_op; 
                    printf("Plane %d: Clear queue landing reply\n", id); 
                    break;
                :: temp_id != id -> 
                    printf("Plane %d: Waiting for landing reply\n", id); 
                    skip;
                fi;
                reply_channel_occupied = false;
                skip;
            }

        :: !isLanding && !isEmergency -> // If takeoff and not emergency, wait for takeoff permission
            atomic{
                reply_channel_occupied = true;
                c_reply_operation?<temp_id, temp_op>;
                if 
                :: temp_id == id -> 
                    c_reply_operation?temp_id, temp_op; 
                    printf("Plane %d: Clear queue takeoff reply\n", id); 
                    break;
                :: temp_id != id ->
                    printf("Plane %d: Waiting for takeoff reply\n", id); 
                    skip;
                fi;
                reply_channel_occupied = false;
                skip;
            }
        od;

    
        atomic { 
            do
            :: temp_id == id && temp_op == emergency_landing && runway_occupied == true -> // If runway is free, land emergency
                atomic { 
                    printf("Plane %d: RunwayProcedures: %e\n", id, temp_op);
                    RunwayProcedures(id, plane_timer, emergency_landing);
                    break;
                }

            :: temp_id == id && temp_op == emergency_takeoff && runway_occupied == true -> // If runway is free, take off emergency
                atomic { 
                    printf("Plane %d: RunwayProcedures: %e\n", id, temp_op);
                    RunwayProcedures(id, plane_timer, emergency_takeoff);
                    break;
                }

            :: !isLanding && temp_id == id && !runway_occupied == true -> // If runway is free, take off
                atomic {
                    printf("Plane %d: RunwayProcedures: takeoff\n", id);
                    RunwayProcedures(id, plane_timer, takeoff);
                    break
                };

            :: isLanding && temp_id == id && !runway_occupied == true  -> // If runway is free, land
                atomic {
                    printf("Plane %d: RunwayProcedures: landing\n", id);
                    RunwayProcedures(id, plane_timer, landing);
                    break;
                }
            od;
        }
    
}
// Plane process
proctype Plane(int id; bool isLanding, isEmergency) {
    int req_landing, req_takeoff, req_parking, rep_landing, rep_takeoff, rep_parking;
    int plane_timer = 0;
    bool isParking = isLanding;  // Not parking by default

    select(plane_timer: 1..10);  // Set a timer to simulate runway usage time 
    printf("Plane %d: timer: %d (s)\n",id,plane_timer);

    run RequestSubmitHandler(isLanding, isEmergency, id);  // Handle request submission
    
    run RunwayProceduresHandler(isLanding, isEmergency, id, plane_timer);  // Handle runway request
    
    run PlaneParkingReplyHandler(isParking, id);  // Handle parking request
}

inline TowerRequest(plane_id, c_request, c_reply, op) {
    atomic {
        c_request?plane_id, op;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d takeoff\n", plane_id);

        c_reply!plane_id, op; // Grant takeoff
        printf("Tower: Reply to plane %d takeoff\n", plane_id);

        c_tower_reply_log!plane_id, op; // Log the tower takeoff reply
        c_tower_log!plane_id, op, tower_reply; // Log the tower takeoff reply
        printf("Tower: Log plane %d takeoff reply\n", plane_id);
    }
}

inline TowerEmergencyRequest(plane_id, c_request, c_reply, op) {
    atomic {
        c_request?plane_id,op;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d %e\n", plane_id, op);

        c_reply!plane_id,op; // Grant emergency
        printf("Tower: Reply to plane %d %e\n", plane_id, op);

        c_tower_reply_log!plane_id, op; // Log the tower emergency reply
        c_tower_log!plane_id, op, tower_reply; // Log the tower emergency reply
        c_emergency_log!plane_id, op, tower_reply; // Log the emergency reply
        printf("Tower: Log plane %d %e reply\n", plane_id, op);
    }
}

proctype TowerOperationRequestHandler(int plane_id; chan c_request; chan c_reply; mtype:e_operation op) {   
    atomic {
        if
        :: runway_occupied == true && (op == emergency_landing || op == emergency_takeoff) -> // If emergency is free, grant emergency
            if 
            :: op == emergency_landing -> 
                TowerEmergencyRequest(plane_id, c_request, c_reply, emergency_landing);
                skip;

            :: op == emergency_takeoff ->
                TowerEmergencyRequest(plane_id, c_request, c_reply, emergency_takeoff);
                skip;
            fi;
            skip;

        :: runway_occupied == false && (op != emergency_landing && op != emergency_takeoff) && len(c_request_emergency) <= 0 ->  // If runway is free, grant landing
            if
            :: op == landing -> 
                TowerRequest(plane_id, c_request, c_reply, landing);
                skip;
            :: op == takeoff -> 
                TowerRequest(plane_id, c_request, c_reply, takeoff);
                skip;
            fi;
            skip;                

        :: runway_occupied == true && (op != emergency_landing && op != emergency_takeoff) || len(c_reply_emergency) > 0 ->  
            if 
            :: op == landing -> // If runway is occupied, deny landing
                printf("Tower: Runway busy, cannot reply for plane %d landing", plane_id);
                skip;
            :: op == takeoff -> // If runway is occupied, deny takeoff
                printf("Tower: Runway busy, cannot reply for plane %d takeoff", plane_id);
                skip;
            fi;
            skip;                 
        fi        
    }
}

inline TowerParkingRequestHandler(plane_id) {
    atomic {
        c_request_parking?plane_id;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d parking\n", plane_id);

        c_reply_parking!plane_id;  // Grant parking
        printf("Tower: Reply to Plane %d parking\n", plane_id);

        c_tower_log!plane_id, parking, tower_reply; // Log the tower parking reply
        c_tower_parking_reply_log!plane_id; // Log the tower parking reply
        printf("Tower: Log plane %d parking reply\n", plane_id);
    }
}

// Tower process
proctype ControlTower() {
    int plane_id = -1;
    mtype:e_operation op = null;
    do
    :: len(c_request_emergency) > 0 && runway_occupied == false -> 
        atomic{
            runway_occupied = true;

            c_request_emergency?<plane_id, op>; // Emergency landing request
            printf("Tower: Check emergency request: plane %d %e\n", plane_id, op);

            printf("Tower: Lock runway for emergency\n");
            c_tower_log!plane_id, emergency, lock; // Log the emergency lock
            if 
            :: op == emergency_landing ->                
                printf("Tower: Handle emergency landing request\n");
                run TowerOperationRequestHandler(plane_id, c_request_emergency, c_reply_emergency, emergency_landing); // Handle emergency landing request
                skip;

            :: op == emergency_takeoff ->
                printf("Tower: Handle emergency takeoff request\n");
                run TowerOperationRequestHandler(plane_id, c_request_emergency, c_reply_emergency, emergency_takeoff); // Handle emergency takeoff request
                skip;
            fi;
            plane_id = -1;
            skip;
        }
    :: len(c_request_emergency) <= 0 && runway_occupied == false ->
        atomic {
            mtype:e_operation temp_op = null;
            if
            :: c_request_operation?<plane_id, temp_op> ->
                printf("Tower: Check request: plane %d %e\n", plane_id, temp_op);
                if
                :: temp_op == landing -> 
                    run TowerOperationRequestHandler(plane_id, c_request_operation, c_reply_operation, landing); // Handle landing request
                    skip;
                :: temp_op == takeoff -> 
                    run TowerOperationRequestHandler(plane_id, c_request_operation, c_reply_operation, takeoff); // Handle takeoff request
                    skip;
                fi;
                skip;

            :: len(c_request_parking) > 0 -> 
                TowerParkingRequestHandler(plane_id); // Handle parking request        
                skip;
            fi;
            skip;        
        }
    od;
}

inline setAirplane(plane, plane_id, plane_isLanding, plane_isEmergency) {
    atomic {
        plane.id = plane_id;    
        int plane_timer = -1;
        select(plane_timer: 1..10);  // Set a timer to simulate runway usage time
        plane.timer = plane_timer;
        plane.isLanding = plane_isLanding;
        plane.isEmergency = plane_isEmergency;
    }
}
// Main initialization
init {
    atomic {
        bool isLanding = true;
        bool isEmergency = true;

        Airplane plane1, plane2, plane3, plane4, plane5, plane6, plane7, plane8, plane9, plane10;
        setAirplane(plane1, 1, isLanding, isEmergency);
        printf("Plane 1: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane1.id, plane1.timer, plane1.isLanding, plane1.isEmergency);
        setAirplane(plane2, 2, !isLanding, !isEmergency);
        printf("Plane 2: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane2.id, plane2.timer, plane2.isLanding, plane2.isEmergency);
        setAirplane(plane3, 3, isLanding, !isEmergency);
        printf("Plane 3: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane3.id, plane3.timer, plane3.isLanding, plane3.isEmergency);
        setAirplane(plane4, 4, !isLanding, !isEmergency);
        printf("Plane 4: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane4.id, plane4.timer, plane4.isLanding, plane4.isEmergency);
        setAirplane(plane5, 5, isLanding, !isEmergency);    
        printf("Plane 5: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane5.id, plane5.timer, plane5.isLanding, plane5.isEmergency);
        setAirplane(plane6, 6, !isLanding, !isEmergency);
        printf("Plane 6: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane6.id, plane6.timer, plane6.isLanding, plane6.isEmergency);
        setAirplane(plane7, 7, isLanding, !isEmergency);
        printf("Plane 7: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane7.id, plane7.timer, plane7.isLanding, plane7.isEmergency);
        setAirplane(plane8, 8, !isLanding, !isEmergency);
        printf("Plane 8: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane8.id, plane8.timer, plane8.isLanding, plane8.isEmergency);
        setAirplane(plane9, 9, isLanding, !isEmergency);
        printf("Plane 9: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane9.id, plane9.timer, plane9.isLanding, plane9.isEmergency);
        setAirplane(plane10, 10, !isLanding, isEmergency);
        printf("Plane 10: id: %d, timer: %d, isLanding: %e, isEmergency: %e\n", plane10.id, plane10.timer, plane10.isLanding, plane10.isEmergency);

        run ControlTower();  // Start the tower process

        // Launch 10 planes with random landing/takeoff requests
        run Plane(plane1.id, plane1.isLanding, plane1.isEmergency);   // Plane 1 wants to land, emergency
        run Plane(plane2.id, plane2.isLanding, plane2.isEmergency);  // Plane 2 wants to take off, not emergency
        run Plane(plane3.id, plane3.isLanding, plane3.isEmergency);   // Plane 3 wants to land, not emergency
        run Plane(plane4.id, plane4.isLanding, plane4.isEmergency);  // Plane 4 wants to take off, not emergency
        run Plane(plane5.id, plane5.isLanding, plane5.isEmergency);   // Plane 5 wants to land, not emergency
        run Plane(plane6.id, plane6.isLanding, plane6.isEmergency);  // Plane 6 wants to take off, not emergency
        run Plane(plane7.id, plane7.isLanding, plane7.isEmergency);   // Plane 7 wants to land, not emergency
        run Plane(plane8.id, plane8.isLanding, plane8.isEmergency);  // Plane 8 wants to take off, not emergency
        run Plane(plane9.id, plane9.isLanding, plane9.isEmergency);   // Plane 9 wants to land, not emergency
        run Plane(plane10.id, plane10.isLanding, plane10.isEmergency); // Plane 10 wants to take off, emergency
    }
}
