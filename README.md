# Muscle Stretch Reflex Analysis

## Overview

This repository contains the MATLAB and Simulink models for the steady-state analysis of the muscle stretch reflex. The project models the closed-loop control system of the muscle stretch reflex, where the stretch of a muscle activates sensory receptors, sending signals to the spinal cord, which then triggers a motor response to maintain muscle length. This system provides a classic example of negative feedback in physiological control systems. The analysis includes both graphical and numerical approaches to determine the steady-state operating point of the system.

## Key Components

1. **Spinal Cord**: Linear relationship between afferent (fa) and efferent (fe) neural discharge frequencies.
2. **Muscle**: Nonlinear relationship between efferent discharge frequency (fe) and muscle length (L).
3. **Spindle**: Nonlinear relationship between muscle length (L) and afferent discharge frequency (fa).

### Objectives
- **Lab Work #1**: Use a graphical procedure to solve for the steady-state operating point.
- **Lab Work #2**: Use Simulink and MATLAB to simulate the system, solve for the steady-state, and compare results with graphical methods.

## Installation

1. Ensure you have [MATLAB](https://www.mathworks.com/products/matlab.html) and [Simulink](https://www.mathworks.com/products/simulink.html) installed.
2. Download or clone the repository to your local machine.

   ```bash
   git clone https://github.com/Jim-2018008/Muscle-Stretch-Reflex-Analysis.git
