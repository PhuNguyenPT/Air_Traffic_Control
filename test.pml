#define HANGAR_SIZE 3

chan hangar = [HANGAR_SIZE] of {int};  // Hangar channel

// Channel definitions
chan c_request_landing = [10] of {int};      // Airplane request landing
chan c_request_takeoff = [10] of {int};      // Airplane request takeoff
chan c_request_parking = [10] of {int};      // Airplane request parking

chan c_reply_landing = [10] of {int};        // Tower response to landing
chan c_reply_takeoff = [10] of {int};        // Tower response to takeoff
chan c_reply_parking = [10] of {int};        // Tower response to parking

// Runway availability (0 = free, 1 = occupied)
bool runway_occupied = false;  // 0 means free, 1 means occupied

// Plane process
proctype Plane(int id; bool isLanding) {
    int req_landing, req_takeoff, req_parking, rep_landing, rep_takeoff, rep_parking;
    int plane_timer = 0;
    select(plane_timer: 1..10);  // Set a timer to simulate runway usage time 
    printf("Plane time: %d\n",  plane_timer);
    bool isParking = isLanding;  // Not parking by default

    // Plane requests landing or takeoff
    if
        :: isLanding -> printf("Plane %d request to landing\n", id);c_request_landing!id;       // Request landing
        :: else -> printf("Plane %d request to takeoff\n", id);c_request_takeoff!id;       // Request takeoff
    fi;

    // Wait for permission from the tower
    if
        :: isLanding -> c_reply_landing??id; rep_landing = id         // Wait for landing permission
        :: else -> c_reply_takeoff??rep_takeoff; rep_takeoff = id     // Wait for takeoff permission
    fi;

    do
        :: rep_landing == id || rep_takeoff == id  -> 
            runway_occupied = true;
            printf("Plane %d is using the runway\n", id);
            
            // Simulate usage for a short time
            do
            :: plane_timer > 0 -> plane_timer--; printf("Time counts down 1s ...");  // Simulate runway usage
            :: else -> break;  // Wait for the "runway time" to expire
            od;
            printf("Plane %d has finished using the runway\n", id);
            
            runway_occupied = 0;  // Runway becomes free
            printf("Plane %d has left the runway\n", id);

            c_request_parking!id;  // Request parking
            break;
    od;

    // Wait for permission to park
    do
        :: len(hangar) > 0 -> 
            hangar!id;
            printf("Plane %d has parked\n", id);
            break;
        :: len(hangar) == HANGAR_SIZE -> 
            printf("Hangar is full, plane %d is waiting\n", id);
            skip; 
    od;
}

// Tower process
proctype ControlTower() {
    int plane_id;

    do
        :: c_request_landing?<plane_id> ->
            if
            :: runway_occupied == false ->  // If runway is free, grant landing
                printf("Tower: Clearance granted for plane %d to land\n", plane_id);
                c_request_landing?plane_id;  // Clear the id in the channel
                printf("Tower: Reply to plane %d landing\n", plane_id);
                c_reply_landing!plane_id;
            :: else ->  // Else, deny landing request
                printf("Tower: Runway busy, plane %d cannot land\n", plane_id);
                skip;  
            fi;
            
        :: c_request_takeoff?<plane_id> ->
            if
            :: runway_occupied == 0 ->  // If runway is free, grant takeoff
                printf("Tower: Clearance granted for plane %d to take off\n", plane_id);
                c_request_takeoff?plane_id;  // Clear the id in the channel
                printf("Tower: Reply to plane %d takeoff\n", plane_id);
                c_reply_takeoff!plane_id;
            :: else ->  // Else, deny takeoff request
                printf("Tower: Runway busy, plane %d cannot take off\n", plane_id);
                skip;
            fi;

        :: c_request_parking?plane_id -> 
            printf("Tower: Plane %d is parking\n", plane_id);
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
        run Plane(10, false); // Plane 10 wants to take off
    }
}
