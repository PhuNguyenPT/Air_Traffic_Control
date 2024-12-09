# **Air Traffic Control Simulation in PROMELA**

An **Air Traffic Control (ATC) Simulation** models the coordination of multiple airplanes attempting to take off, land, park, and handle emergencies, ensuring safe and efficient usage of a shared runway. The goal is to ensure that no two planes use the runway simultaneously, collisions are avoided, and fairness is maintained in managing operations while prioritizing emergency scenarios.

---

## **Key Components to Model**

1. **Airplanes**  
   - Represent concurrent processes simulating airplane operations such as landing, parking, takeoff, and emergencies.

2. **Runway**  
   - A shared resource that only one plane can access at a time.
   - Includes mechanisms to support emergency preemption.

3. **Control Tower**  
   - A centralized process responsible for coordinating runway access, managing parking, and handling emergencies.

4. **Queues**  
   - Separate queues for:
     - Landing requests.
     - Takeoff requests.
     - Parking (limited by hangar capacity).

---

## **Updated Requirements**

- **Plane Processes**: 10 processes representing individual airplanes.
- **Control Tower Process**: 1 centralized process managing all operations.
- **Runway**: A single shared resource with time-based usage control.
- **Hangar**: Limited capacity for parked planes (defined by `HANGAR_SIZE`).
- **Communication Channels**:
  - **Landing**:
    - `Plane request landing channel`: Planes send landing requests.
    - `Tower reply landing channel`: Tower grants landing permissions.
  - **Takeoff**:
    - `Plane request takeoff channel`: Planes send takeoff requests.
    - `Tower reply takeoff channel`: Tower grants takeoff permissions.
  - **Parking**:
    - `Plane request parking channel`: Planes request parking after landing.
    - `Tower reply parking channel`: Tower grants parking permissions.
    - **Hangar**: Tracks parked planes (limited to `HANGAR_SIZE`).
  - **Emergency**:
    - **Emergency plane request channel**: Emergency requests for immediate runway access.
- **Key Constraints**:
  1. Planes waiting to park do not occupy the runway.
  2. Emergency planes take top priority:
     - Planes using the runway must vacate immediately for emergency use.
  3. Planes that land successfully must sequentially take off in the order they landed.

---

## **PROMELA Model Outline**

### **1. Processes**

#### **Plane Process**  
- Simulates the operations of individual planes, including:
  - Requesting and performing landing.
  - Parking operations (if hangar space is available).
  - Requesting and performing takeoff.
  - Declaring emergencies when required.

#### **Control Tower Process**  
- Handles coordination between planes:
  - Granting runway access for landing, takeoff, and emergencies.
  - Managing queues and prioritizing operations based on fairness and urgency.
  - Allocating hangar space for parking.

---

### **2. Communication Channels**

- **Landing**:
  - Request channel: Planes send landing requests to the tower.
  - Reply channel: Tower grants landing permissions.
  
- **Takeoff**:
  - Request channel: Planes send takeoff requests to the tower.
  - Reply channel: Tower grants takeoff permissions.
  
- **Parking**:
  - Request channel: Planes request parking after landing.
  - Reply channel: Tower grants parking permissions if hangar space is available.
  
- **Emergency**:
  - Emergency request channel: Emergency planes signal for immediate runway access.

---

### **3. Synchronization Mechanisms**

1. **Mutual Exclusion**  
   - Ensures only one plane uses the runway at a time.
   - Implemented via a `runway_occupied` flag or semaphore.

2. **Fairness**  
   - Prevents starvation by processing queued requests in order of arrival.
   - Emergency requests override regular requests.

3. **Hangar Management**  
   - Parking is limited by the hangar's capacity (`HANGAR_SIZE`).
   - Planes wait in a queue if the hangar is full.

---

## **Simulation Scenarios**

### **1. Normal Operations**
- Planes request and perform landing, parking, and takeoff in sequence.
- The system ensures runway exclusivity and orderly operation.

### **2. Hangar Overflow**
- Planes wait when the hangar reaches capacity.
- The system maintains fairness in granting parking permissions.

### **3. Emergency Handling**
- Emergency planes override normal operations and gain immediate runway access.
- The control tower preempts ongoing activities to handle emergencies.

---

This updated model provides a comprehensive framework to simulate an air traffic control system in PROMELA, incorporating emergency handling, parking constraints, and fairness mechanisms for realistic and robust operation.
