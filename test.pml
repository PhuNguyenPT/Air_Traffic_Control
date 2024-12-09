#define HANGAR_SIZE 3
mtype:e_operation = {takeoff, landing, parking, runway, emergency_takeoff, emergency_landing, emergency, null};  // Operation type
mtype:e_status = {plane_request, tower_reply, plane_waiting, lock, finish};  // Status type

chan hangar = [HANGAR_SIZE] of {int};  // Hangar channel: plane_id

// Channel definitions
chan c_request_landing = [10] of {int};      // Airplane request landing: plane_id
chan c_request_takeoff = [10] of {int};      // Airplane request takeoff: plane_id
chan c_request_parking = [10] of {int};      // Airplane request parking: plane_id
chan c_request_emergency = [10] of {int, mtype:e_operation};    // Airplane request emergency landing: plane_id

chan c_reply_landing = [10] of {int};        // Tower response to landing: plane_id
chan c_reply_takeoff = [10] of {int};        // Tower response to takeoff: plane_id
chan c_reply_parking = [10] of {int};        // Tower response to parking: plane_id
chan c_reply_emergency = [10] of {int, mtype:e_operation};      // Tower response to emergency landing: plane_id

chan c_waiting_parking = [10] of {int};      // Waiting for parking: plane_id

chan c_plane_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Plane log: plane_id, operation, status
chan c_plane_request_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Request log: plane_id, operation, status
chan c_plane_parking_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Parking log: plane_id, operation, status
chan c_plane_runway_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Runway log: plane_id, operation, status

chan c_tower_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Tower log: plane_id, operation, status
chan c_tower_reply_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Reply log: plane_id, operation, status

chan c_emergency_log = [100] of {int, mtype:e_operation, mtype:e_status}; // Emergency log: plane_id, operation, status

// Runway availability (0 = free, 1 = occupied)
bool runway_occupied = false;  // 0 means free, 1 means occupied
bool parking_occupied = false; // 0 means free, 1 means occupied
bool emergency_occupied = false; // 0 means free, 1 means occupied

proctype RunwayProcedures(int id, plane_timer; mtype:e_operation op) {
    atomic {
        runway_occupied = true;
        
        c_plane_runway_log!id, op, lock; // Log the runway lock
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
        :: else -> printf("Plane %d: Finish count down\n", id); break;  // Wait for the "runway time" to expire
        od;

        printf("Plane %d: Has finished using the runway\n", id);
        
        runway_occupied = 0;  // Runway becomes free
        printf("Plane %d: Has left the runway\n", id);

        if
            :: op == landing || op == emergency_landing -> c_request_parking!id; printf("Plane %d: Request parking after %e\n", id, op);  // Request parking
            :: else -> skip;
        fi
    }
}

proctype RequestSubmit(int id; mtype:e_operation op) {
    atomic {
        // Plane requests landing or takeoff
        if
        :: op == emergency_landing -> 
            c_request_emergency!id, emergency_landing;  // Request emergency landing
            printf("Plane %d: Request to emergency landing\n", id);

            c_plane_request_log!id, emergency_landing, plane_request;  // Log the request
            c_plane_log!id, emergency_landing, plane_request;  // Log the request
            c_emergency_log!id, emergency_landing, plane_request;  // Log the request
            printf("Plane %d: Log emergency landing request\n", id);
            skip;

        :: op == emergency_takeoff ->
            c_request_emergency!id, emergency_takeoff;  // Request emergency takeoff
            printf("Plane %d: Request to emergency takeoff\n", id);

            c_plane_request_log!id, emergency_takeoff, plane_request;  // Log the request
            c_plane_log!id, emergency_takeoff, plane_request;  // Log the request
            c_emergency_log!id, emergency_takeoff, plane_request;  // Log the request
            printf("Plane %d: Log emergency takeoff request\n", id);
            skip;

        :: op == landing -> 
            c_request_landing!id;  // Request landing
            printf("Plane %d: Request to land\n", id); 

            c_plane_request_log!id, landing, plane_request;  // Log the request
            c_plane_log!id, landing, plane_request;  // Log the request
            printf("Plane %d: Log landing request\n", id);
            skip;

        :: op == takeoff -> 
            c_request_takeoff!id;  // Request takeoff
            printf("Plane %d: Request to takeoff\n", id);

            c_plane_request_log!id, takeoff, plane_request;  // Log the request
            c_plane_log!id, takeoff, plane_request;  // Log the request
            printf("Plane %d: Log takeoff request\n", id);
            skip;
        fi;
    }
}

proctype RequestSubmitHandler(bool isLanding, isEmergency; int id) {
    if
    :: isLanding && isEmergency -> 
        run RequestSubmit(id, emergency_landing);  // Send emergency landing request to tower
        skip;

    :: !isLanding && isEmergency -> 
        run RequestSubmit(id, emergency_takeoff);  // Send emergency takeoff request to tower
        skip;

    :: isLanding && !isEmergency -> 
        run RequestSubmit(id, landing);  // Send request to tower
        skip;

    :: !isLanding && !isEmergency -> 
        run RequestSubmit(id, takeoff);  // Send request to tower
        skip;
    fi;    
}

proctype PlaneParking(int id) {
    atomic {
        if
        :: len(hangar) < HANGAR_SIZE -> // If hangar is not full, park
            parking_occupied = true;
            c_plane_log!id, parking, lock; // Log the parking lock
            printf("Plane %d: Take parking lock\n", id);

            printf("Plane %d: Hangar size: %d\n", id, len(hangar));
            hangar!id;

            c_plane_parking_log!id, parking, plane_request; // Log the parking request
            printf("Plane %d: Has parked. Increase hangar size: %d\n", id, len(hangar));
            parking_occupied = false;
            
        :: len(hangar) >= HANGAR_SIZE -> // If hangar is full, wait
            parking_occupied = true;
            c_plane_log!id, parking, lock; // Log the parking lock
            printf("Hangar is full, plane %d is waiting\n", id);

            c_waiting_parking!id;
            printf("Plane %d: Send parking request to waiting list\n", id);

            c_plane_log!id, parking, plane_waiting; // Log the waiting status
            c_plane_parking_log!id, parking, plane_waiting; // Log the waiting status
            parking_occupied = false;
        fi
    }
}

proctype PlaneParkingReplyHandler(bool isParking; int id, rep_parking) {
    atomic {
        if
        :: isParking -> 
            c_reply_parking??id; 
            rep_parking = id; 
            printf("Plane %d: Clear queue parking reply of number %d\n", id, rep_parking); // Wait for parking permission
            skip;
        :: !isParking -> skip;
        fi

        // Wait for permission to park
        do
        :: rep_parking == id && !parking_occupied == true -> // If parking is free, park
            run PlaneParking(rep_parking);
            break;
        od;
    }
}

proctype RunwayProceduresHandler(bool isLanding, isEmergency; int id, plane_timer) {
    
        int temp_id = -1;
        mtype:e_operation temp_op;
        // Wait for permission from the tower
        do
        :: isLanding && isEmergency -> // If landing and emergency, wait for emergency landing permission
            atomic { 
                c_reply_emergency?<temp_id, temp_op>;
                if   
                :: temp_id == id && temp_op == emergency_landing -> 
                    c_reply_emergency?id, emergency_landing; 
                    printf("Plane %d: Clear queue emergency landing reply\n", id); 
                    break;

                ::  temp_id != id || temp_op != emergency_landing ->
                    printf("Plane %d: Waiting for emergency landing reply\n", id); 
                    skip;
                fi;
                skip;
            }
        :: !isLanding && isEmergency -> // If takeoff and emergency, wait for emergency takeoff permission
            atomic { c_reply_emergency?<temp_id, temp_op>; 
                if
                :: id == temp_id && temp_op == emergency_takeoff -> 
                    c_reply_emergency?id, emergency_takeoff; 
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
                c_reply_landing?<temp_id>;
                if 
                :: temp_id == id -> 
                    c_reply_landing?id; 
                    printf("Plane %d: Clear queue landing reply\n", id); 
                    break;
                :: temp_id != id -> 
                    printf("Plane %d: Waiting for landing reply\n", id); 
                    skip;
                fi;
                skip;
            }

        :: !isLanding && !isEmergency -> // If takeoff and not emergency, wait for takeoff permission
            atomic{
                c_reply_takeoff?<temp_id>;
                if 
                :: temp_id == id -> 
                    c_reply_takeoff?id; 
                    printf("Plane %d: Clear queue takeoff reply\n", id); 
                    break;
                :: temp_id != id ->
                    printf("Plane %d: Waiting for takeoff reply\n", id); 
                    skip;
                fi;
                skip;
            }
        od;

    
        atomic { 
            do
            :: temp_id == id && temp_op == emergency_landing && runway_occupied == true -> // If runway is free, land emergency
                atomic { 
                    printf("Plane %d: RunwayProcedures: %e\n", id, temp_op);
                    run RunwayProcedures(id, plane_timer, emergency_landing);
                    break;
                }

            :: temp_id == id && temp_op == emergency_takeoff && runway_occupied == true -> // If runway is free, take off emergency
                atomic { 
                    printf("Plane %d: RunwayProcedures: %e\n", id, temp_op);
                    run RunwayProcedures(id, plane_timer, emergency_takeoff);
                    break;
                }

            :: !isLanding && temp_id == id && !runway_occupied == true -> // If runway is free, take off
                atomic {
                    printf("Plane %d: RunwayProcedures: takeoff\n", id);
                    run RunwayProcedures(id, plane_timer, takeoff);
                    break
                };

            :: isLanding && temp_id == id && !runway_occupied == true  -> // If runway is free, land
                atomic {
                    printf("Plane %d: RunwayProcedures: landing\n", id);
                    run RunwayProcedures(id, plane_timer, landing);
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
    
    run PlaneParkingReplyHandler(isParking, id, rep_parking);  // Handle parking request
}

proctype TowerLandingRequest(int plane_id; chan c_request; chan c_reply) {
    atomic {
        c_request?plane_id;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d landing\n", plane_id);

        c_reply!plane_id; // Grant landing
        printf("Tower: Reply to plane %d landing\n", plane_id);

        c_tower_reply_log!plane_id, landing, tower_reply; // Log the tower landing reply
        c_tower_log!plane_id, landing, tower_reply; // Log the tower landing reply
        printf("Tower: Log plane %d landing reply\n", plane_id);
    }
}

proctype TowerTakeoffRequest(int plane_id; chan c_request; chan c_reply) {
    atomic {
        c_request?plane_id;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d takeoff\n", plane_id);

        c_reply!plane_id; // Grant takeoff
        printf("Tower: Reply to plane %d takeoff\n", plane_id);

        c_tower_reply_log!plane_id, takeoff, tower_reply; // Log the tower takeoff reply
        c_tower_log!plane_id, takeoff, tower_reply; // Log the tower takeoff reply
        printf("Tower: Log plane %d takeoff reply\n", plane_id);
    }
}

proctype TowerEmergencyRequest(int plane_id; chan c_request; chan c_reply; mtype:e_operation op) {
    atomic {
        c_request?plane_id,op;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d %e\n", plane_id, op);

        c_reply!plane_id,op; // Grant emergency
        printf("Tower: Reply to plane %d %e\n", plane_id, op);

        c_tower_reply_log!plane_id, op, tower_reply; // Log the tower emergency reply
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
                run TowerEmergencyRequest(plane_id, c_request, c_reply, emergency_landing);
                skip;

            :: op == emergency_takeoff ->
                run TowerEmergencyRequest(plane_id, c_request, c_reply, emergency_takeoff);
                skip;
            fi;
            skip;

        :: runway_occupied == false && (op != emergency_landing && op != emergency_takeoff) && len(c_request_emergency) <= 0 ->  // If runway is free, grant landing
            if
            :: op == landing -> 
                run TowerLandingRequest(plane_id, c_request, c_reply);
                skip;
            :: op == takeoff -> 
                run TowerTakeoffRequest(plane_id, c_request, c_reply);
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

proctype TowerParkingRequestHandler(int plane_id) {
    atomic {
        c_request_parking?plane_id;  // Clear the id in the channel
        printf("Tower: Clear queue request for plane %d parking\n", plane_id);

        c_reply_parking!plane_id;  // Grant parking
        printf("Tower: Reply to Plane %d parking\n", plane_id);

        c_tower_log!plane_id, parking, tower_reply; // Log the tower parking reply
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
            skip;
        }
    :: len(c_request_emergency) <= 0 && runway_occupied == false ->
        atomic {
            if
            :: c_request_landing?<plane_id> ->
                run TowerOperationRequestHandler(plane_id, c_request_landing, c_reply_landing, landing); // Handle landing request
                skip;

            :: c_request_takeoff?<plane_id> ->
                run TowerOperationRequestHandler(plane_id, c_request_takeoff, c_reply_takeoff, takeoff); // Handle takeoff request
                skip;

            :: len(c_request_parking) > 0 -> 
                run TowerParkingRequestHandler(plane_id); // Handle parking request        
                skip;
            fi;
            skip;        
        }
    od;
}

// Main initialization
init {
    atomic {
        bool isLanding = true;
        bool isEmergency = true;

        run ControlTower();  // Start the tower process

        // Launch 10 planes with random landing/takeoff requests
        run Plane(1, isLanding, isEmergency);   // Plane 1 wants to land, emergency
        run Plane(2, !isLanding, !isEmergency);  // Plane 2 wants to take off, not emergency
        run Plane(3, isLanding, !isEmergency);   // Plane 3 wants to land, not emergency
        run Plane(4, !isLanding, !isEmergency);  // Plane 4 wants to take off, not emergency
        run Plane(5, isLanding, !isEmergency);   // Plane 5 wants to land, not emergency
        run Plane(6, !isLanding, !isEmergency);  // Plane 6 wants to take off, not emergency
        run Plane(7, isLanding, !isEmergency);   // Plane 7 wants to land, not emergency
        run Plane(8, !isLanding, !isEmergency);  // Plane 8 wants to take off, not emergency
        run Plane(9, isLanding, !isEmergency);   // Plane 9 wants to land, not emergency
        // run Plane(10, false); // Plane 10 wants to take off
    }
}
