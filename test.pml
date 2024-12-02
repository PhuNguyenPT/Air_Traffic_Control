// Channel definitions
chan request_landing = [10] of {int};      // Airplane request landing
chan request_takeoff = [10] of {int};      // Airplane request takeoff
chan request_parking = [10] of {int};      // Airplane request parking

chan reply_landing = [10] of {int};        // Tower response to landing
chan reply_takeoff = [10] of {int};        // Tower response to takeoff
chan reply_parking = [10] of {int};        // Tower response to parking

// Runway availability (0 = free, 1 = occupied)
byte runway_status = 0;  // 0 means free, 1 means occupied

// Timer simulation variable
byte timer = 0;  // Timer to simulate runway usage time

// Plane process
proctype Plane(int id; bool isLanding) {
    // Plane requests landing or takeoff
    if
    :: isLanding -> request_landing!id;       // Request landing
    :: else -> request_takeoff!id;             // Request takeoff
    fi;

    // Wait for permission from the tower
    if
    :: isLanding -> reply_landing?id;         // Wait for landing permission
    :: else -> reply_takeoff?id;               // Wait for takeoff permission
    fi;

    // Simulate runway usage (runway occupied)
    runway_status = 1;
    timer = 1;  // Set a timer to simulate runway usage time (you can adjust this)
    printf("Plane %d is using the runway\n", id);
    
    // Simulate usage for a short time
    do
    :: timer == 1 -> skip;  // Wait for the "runway time" to expire
    od;
    printf("Plane %d has finished using the runway\n", id);

    // Send request for parking after using the runway
    request_parking!id;
    
    // Wait for parking permission
    reply_parking?id;
    printf("Plane %d has parked\n", id);
    
    runway_status = 0;  // Runway becomes free
}

// Tower process
proctype ControlTower() {
    int plane_id;

    do
    :: request_landing?plane_id ->
        if
        :: runway_status == 0 ->  // If runway is free, grant landing
            reply_landing!plane_id;
        :: else ->  // Else, deny landing request
            printf("Tower: Runway busy, plane %d cannot land\n", plane_id);
            reply_landing!(-1);  // -1 indicates a denied request
        fi;
        
    :: request_takeoff?plane_id ->
        if
        :: runway_status == 0 ->  // If runway is free, grant takeoff
            reply_takeoff!plane_id;
        :: else ->  // Else, deny takeoff request
            printf("Tower: Runway busy, plane %d cannot take off\n", plane_id);
            reply_takeoff!(-1);  // -1 indicates a denied request
        fi;

    :: request_parking?plane_id -> 
        printf("Tower: Plane %d is parking\n", plane_id);
        reply_parking!plane_id;  // Grant parking
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
