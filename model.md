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

operations
channels
flags
RequestSubmit
RunwayProcedures
RequestSubmitHandler
PlaneParking
PlaneParkingReplyHandler
RunwayProceduresHandler
Plane
TowerLandingRequest
TowerTakeoffRequest
TowerEmergencyRequest
TowerOperationRequestHandler
TowerParkingRequestHandler
ControlTower
init

init (start simulation)

-> Plane (initialize plane processes)

-> RequestSubmitHandler (consider each case: landing, takeoff, emergency,...)

-> RequestSubmit (planes requesting for landing/takeoff: add “plane ids” to “request channel” for tower, add “plane ids” to logging channels for landing/takeoff)

-> ControlTower (tower sees ids in “request channel”, tower replies to request, )

-> TowerOperationRequestHandler (consider each case)

->TowerLandingRequest/TowerTakeoffRequest/TowerEmergencyRequest (what each case does in more detail, tower adds “plane ids” to “reply channel”)

-> Plane (back to plane, plane runs RunwayProceduresHandler)

-> RunwayProceduresHandler (consider each case, log each case)

-> RunwayProcedures (what each case does in more detail: “plane using runway…”, “plane timer countdown…”)

-> RequestSubmit (planes that finished landing now requests for parking: “add “plane ids” to “request parking channel” for tower”, add “plane ids” to logging channels for parking)

-> ControlTower (go back to Tower, tower sees ids in “request parking channel”, tower replies to request)

-> TowerParkingRequestHandler (tower adds “plane ids” to “reply parking channel”)

-> Plane (back to plane, plane runs PlaneParkingReplyHandler)

-> PlaneParkingReplyHandler (plane checks ids in “reply parking channel”)

-> PlaneParking (consider each case: hanger full, not full. Log plane data into log channels)

## PROMELA Model Outline:

1. **Processes:**
    - Plane Process: Represents each plane.
    - Tower Process: Manages access to the runway.

2. **Channels:**
    - Use channels for communication between planes and the tower (e.g., **request** and **grant**).

3. **Synchronization Mechanisms:**
    - Mutual exclusion to prevent runway conflicts.
    - Fairness to ensure no plane starves.
