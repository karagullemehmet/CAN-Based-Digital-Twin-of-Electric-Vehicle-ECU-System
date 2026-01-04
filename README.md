# CAN Based Digital Twin of Electric Vehicle ECU System
MATLAB/Simulink-based digital twin of an Electric Vehicle ECU system. Features PID speed control, Stateflow-based mode management (Idle, Accel, Cruise, Decel), and CAN bus data communication for controller validation.

This project presents a **CAN-based digital twin** of an **Electric Vehicle (EV) ECU System**, modeled and simulated in **MATLAB/Simulink**.  
The system integrates **PID-based speed control**, **Stateflow-based driving mode logic**, and **CAN bus communication** for real-time signal exchange between control units.

---

## ⚙️ System Architecture

The digital twin consists of the following major subsystems:
- **Vehicle Dynamics Model:** Simulates vehicle motion using Newton’s second law (F = m·a).  
- **ECU Control Unit (Stateflow):** Manages driving states — *Idle, Accel, Cruise, Decel*.  
- **PID Controller:** Regulates throttle based on speed error between `Vehicle_Speed` and `Speed_Ref`.  
- **CAN Communication Bus:** Enables data transfer between simulated ECU nodes for future HIL (Hardware-in-the-Loop) testing.

---

## 🧠 Control Algorithm

The PID controller parameters are tuned using the **Ziegler–Nichols method**
