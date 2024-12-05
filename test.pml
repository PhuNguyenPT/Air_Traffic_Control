#define HANGAR_SIZE 3
mtype:e_operation = {takeoff, landing};

chan hangar = [HANGAR_SIZE] of {int};  // Hangar channel

// Channel definitions
chan c_request_landing = [10] of {int};      // Airplane request landing
chan c_request_takeoff = [10] of {int};      // Airplane request takeoff
chan c_request_parking = [10] of {int};      // Airplane request parking

chan c_reply_landing = [10] of {int};        // Tower response to landing
chan c_reply_takeoff = [10] of {int};        // Tower response to takeoff
chan c_reply_parking = [10] of {int};        // Tower response to parking

chan c_waiting_parking = [10] of {int};      // Waiting for parking

// Runway availability (0 = free, 1 = occupied)
bool runway_occupied = false;  // 0 means free, 1 means occupied
bool parking_occupied = false; // 0 means free, 1 means occupied

proctype RunwayProcedures(int id; bool occupied; int rep_landing, rep_takeoff, plane_timer) {
    atomic {
        runway_occupied = true;
        printf("Plane %d is using the runway for (%d - landing)/ (%d - takeoff)\n", id, (rep_landing == id), (rep_takeoff == id));
        
        // Simulate usage for a short time
        do
        :: plane_timer > 0 -> 
            printf("Plane %d: Timer %d (s) counts down 1s ...\n", id,plane_timer);  // Simulate runway usage
            plane_timer--; 
        :: else -> break;  // Wait for the "runway time" to expire
        od;

        printf("Plane %d: Has finished using the runway\n", id);
        
        printf("Plane %d: Has left the runway\n", id);
        runway_occupied = 0;  // Runway becomes free

        if
            :: rep_landing == id -> c_request_parking!id; printf("Plane %d: Request parking\n", id);  // Request parking
            :: else skip;
        fi
    }
}


proctype RequestSubmitHandler(int id; bool isLanding) {
    atomic {
        // Plane requests landing or takeoff
        if
        :: isLanding -> printf("Plane %d: Request to landing\n", id); c_request_landing!id;  // Request landing
        :: else -> printf("Plane %d: Request to takeoff\n", id); c_request_takeoff!id;       // Request takeoff
        fi
    }
}

proctype PlaneParking(int id) {
    atomic {
        if
        :: len(hangar) < HANGAR_SIZE -> // If hangar is not full, park
            parking_occupied = true;
            printf("Plane %d: Take parking lock\n", id);

            printf("Plane %d: Hangar size: %d\n", id, len(hangar));
            hangar!id;
            printf("Plane %d: Has parked. Increase hangar size: %d\n", id, len(hangar));
            parking_occupied = false;
            
        :: else -> // If hangar is full, wait
            parking_occupied = true;
            printf("Hangar is full, plane %d is waiting\n", id);

            c_waiting_parking!id;
            printf("Plane %d: Send parking request to waiting list\n", id);
            parking_occupied = false;
        fi
    }
}

proctype PlaneParkingHandler(bool isParking; int id, rep_parking) {
    atomic {
        if
        :: isParking -> c_reply_parking??id; rep_parking = id; printf("Plane %d: Clear queue parking reply of number %d\n", id, rep_parking); // Wait for parking permission
        :: else -> skip;
        fi

        // Wait for permission to park
        do
        :: rep_parking == id && !parking_occupied == true -> 
            run PlaneParking(rep_parking);
            break;
        od;
    }
}

proctype RunwayProceduresHandler(bool isLanding; int id, rep_landing, rep_takeoff, plane_timer) {
    atomic {
        // Wait for permission from the tower
        if
        :: isLanding -> c_reply_landing??id; rep_landing = id; printf("Plane %d: Clear queue landing reply\n", id);  // Wait for landing permission
        :: else -> c_reply_takeoff??id; rep_takeoff = id; printf("Plane %d: Clear queue takeoff reply\n", id)       // Wait for takeoff permission
        fi;

        do
        :: rep_takeoff == id && !runway_occupied == true ->
            run RunwayProcedures(rep_takeoff, runway_occupied, rep_landing, rep_takeoff, plane_timer);
            break;

        :: rep_landing == id && !runway_occupied == true  -> 
            run RunwayProcedures(rep_landing, runway_occupied, rep_landing, rep_takeoff, plane_timer);
            break;
        od;
    }
}
// Plane process
proctype Plane(int id; bool isLanding) {
    int req_landing, req_takeoff, req_parking, rep_landing, rep_takeoff, rep_parking;
    int plane_timer = 0;
    bool isParking = isLanding;  // Not parking by default

    select(plane_timer: 1..10);  // Set a timer to simulate runway usage time 
    printf("Plane %d: timer: %d (s)\n",id,plane_timer);

    run RequestSubmitHandler(id, isLanding);  // Send request to tower

    run RunwayProceduresHandler(isLanding, id, rep_landing, rep_takeoff, plane_timer);  // Handle runway request
    
    run PlaneParkingHandler(isParking, id, rep_parking);  // Handle parking request
}

proctype TowerOperationRequestHandler(int plane_id; chan c_request; chan c_reply; mtype:e_operation op) {   
    atomic {
        if
        :: runway_occupied == false ->  // If runway is free, grant landing
            if
            :: op == landing -> 
 
                c_request?plane_id;  // Clear the id in the channel
                printf("Tower: Clear queue request for plane %d landing\n", plane_id);

                c_reply!plane_id;
                printf("Tower: Reply to plane %d landing\n", plane_id);

                skip;
            :: op == takeoff -> 
                c_request?plane_id;  // Clear the id in the channel
                printf("Tower: Clear queue request for plane %d takeoff\n", plane_id);

                c_reply!plane_id;
                printf("Tower: Reply to plane %d takeoff\n", plane_id);
                skip;
            fi;
        :: else ->  
            printf("Tower: Runway busy, plane %d cannot (%d - landing)/(%d - takeoff)\n", plane_id, (op == landing), (op == takeoff));
            skip;  
        fi        
    }
}

// Tower process
proctype ControlTower() {
    int plane_id;

    do
    :: c_request_landing?<plane_id> ->
        run TowerOperationRequestHandler(plane_id, c_request_landing, c_reply_landing, landing);
        
    :: c_request_takeoff?<plane_id> ->
        run TowerOperationRequestHandler(plane_id, c_request_takeoff, c_reply_takeoff, takeoff);


    :: c_request_parking?plane_id -> 
        printf("Tower: Reply to Plane %d parking\n", plane_id);
        c_reply_parking!plane_id;  // Grant parking
    od;
}

// Main initialization
init {
    atomic {
        run ControlTower();  // Start the tower process

        // Launch 10 planes with random landing/takeoff requests
        run Plane(1, true);   // Plane 1 wants to land
        run Plane(2, false);  // Plane 2 wants to take off
        run Plane(3, true);   // Plane 3 wants to land
        run Plane(4, false);  // Plane 4 wants to take off
        run Plane(5, true);   // Plane 5 wants to land
        run Plane(6, false);  // Plane 6 wants to take off
        run Plane(7, true);   // Plane 7 wants to land
        run Plane(8, false);  // Plane 8 wants to take off
        run Plane(9, true);   // Plane 9 wants to land
        // run Plane(10, false); // Plane 10 wants to take off
    }
}
