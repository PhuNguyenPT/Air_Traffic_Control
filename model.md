# Air Traffic Control Simulation in PROMELA

An **Air Traffic Control (ATC) Simulation** models the coordination of multiple airplanes attempting to take off, land, and use runways safely. The objective is to ensure that no two planes are on the same runway simultaneously and to avoid collisions, while also maintaining fairness in allowing planes to take off and land.  

## Key Components to Model:

1. **Airplanes:** Representing concurrent processes trying to access a shared resource (runway).

2. **Runways:** Shared resources that planes must access exclusively.
3. **Control Tower:** A centralized process that grants permission for takeoff or landing.
4. **Queues:** Separate queues for planes waiting to land and take off.

## Requirements:
- 10 Airplanes.
- 1 Tower Control.
- 1 Runway with timer control.
- 1 Plane request landing channel.
- 1 Plane request takeoff channel.
- 1 Plane request parking channel.
- 1 Tower reply landing channel.
- 1 Tower reply takeoff channel.
- 1 Tower reply parking channel.
- When waiting to park, plane does not occupy runway.
- Emergency situation: Emergency plane needs to take top priority: planes using the runway for landing/takeoff needs to leave immediately, leaving the runway for the emergency plane.
- Planes that landed successfully has to sequentially take off.

## PROMELA Model Outline:

1. **Processes:**
    - Plane Process: Represents each plane.
    - Tower Process: Manages access to the runway.

2. **Channels:**
    - Use channels for communication between planes and the tower (e.g., **request** and **grant**).

3. **Synchronization Mechanisms:**
    - Mutual exclusion to prevent runway conflicts.
    - Fairness to ensure no plane starves.
