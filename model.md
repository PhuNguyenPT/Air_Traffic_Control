# Air Traffic Control Simulation in PROMELA

An **Air Traffic Control (ATC) Simulation** models the coordination of multiple airplanes attempting to take off, land, and use runways safely. The objective is to ensure that no two planes are on the same runway simultaneously and to avoid collisions, while also maintaining fairness in allowing planes to take off and land.  

## Key Components to Model:

1. **Airplanes:** Representing concurrent processes trying to access a shared resource (runway).

2. **Runways:** Shared resources that planes must access exclusively.
3. **Control Tower:** A centralized process that grants permission for takeoff or landing.
4. **Queues:** Separate queues for planes waiting to land and take off.

## Requirements:
- 10 Plane processes.
- 1 Tower Control process.
- 1 Runway shared resource.
- 3 plane operations: landing/takeoff, parking, emergency (landing/takeoff).
- 1 channel each for Planes to request each operation (3 channels).
- 1 channel each for Tower to reply to each operation (3 channels).
- 5 channels for logging plane data: summary, request, parking, runway, parking request.
- 3 channels for logging tower data: summary, reply, parking reply.
- 1 channel for logging emergency cases.
- When waiting to park, plane does not occupy runway resource.
- Emergency plane needs to take top priority: planes using the runway for landing/takeoff needs to leave immediately, leaving the runway for the emergency plane.
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
