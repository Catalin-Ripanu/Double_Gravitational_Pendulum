# Pendulum Simulation Variants

## Overview
This assignment involves implementing pendulum simulations with varying complexity levels. All variants are based on the model presented in the meeting and require dynamic simulation of pendulum motion.

## Variants

### Variant 1 - Chaotic Double Pendulum (Low Difficulty)
**Objective**: Demonstrate chaotic behavior in double pendulum systems

**Requirements**:
- Simulate **three identical double pendulums** simultaneously
- Each pendulum has **slightly different initial conditions**
- Reproduce the chaotic evolution illustration from the provided reference
- Visualize how small initial differences lead to dramatically different trajectories

**Features**:
- Multiple pendulum comparison
- Chaos visualization
- Sensitivity to initial conditions demonstration

---

### Variant 2 - Triple Gravitational Pendulum (Medium Difficulty)
**Objective**: Simulate a more complex pendulum system with three masses

**Requirements**:
- Implement a **triple pendulum** system
- Account for gravitational effects between all three masses
- Simulate realistic motion dynamics
- Handle the increased complexity of three-body pendulum interactions

**Features**:
- Three-mass system dynamics
- Gravitational coupling between masses
- Complex motion patterns
- Advanced numerical integration

---

### Variant 3 - Energy-Conserving Double Pendulum (High Difficulty)
**Objective**: Implement energy conservation through active control

**Requirements**:
- Simulate a **double gravitational pendulum**
- **Maintain constant total energy** throughout the simulation
- Implement **active control** of angular velocities during recursion
- **Monitor total energy** at each simulation step
- Include **compensation mechanism** for numerical errors

**Features**:
- Energy conservation algorithm
- Real-time energy monitoring
- Numerical error compensation
- Feedback control system
- Method error correction

**Technical Notes**:
- The algorithm must detect energy drift due to numerical integration errors
- Implement corrective measures to maintain energy conservation
- Balance between accuracy and computational efficiency

## Implementation Guidelines

### Common Requirements
- Use the model framework from the meeting as the foundation
- Implement proper numerical integration methods
- Include a visualization of pendulum motion
- Provide real-time simulation capabilities

### Recommended Approach
1. Start with the basic double pendulum equations of motion
2. Implement an appropriate numerical solver (Runge-Kutta recommended)
3. Add variant-specific features (multiple pendulums, energy control, etc.)
4. Include visualization and data output capabilities

### Physics Considerations
- Lagrangian mechanics for equation derivation
- Proper handling of angular coordinates and velocities
- Gravitational coupling effects (where applicable)
- Energy conservation principles

## Expected Deliverables
- Functional simulation program
- Visual output showing pendulum motion
- Documentation of numerical methods used
- Analysis of results (chaos, energy conservation, etc.)
