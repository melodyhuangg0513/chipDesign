

# Programmable Light-show System

Melody Huang
ChipDesign StucoSpring 2023 Final Tapeout Project

## Overview
a programmable light-show system which can control RGB LED light strips to generate fabulous visual effects in a synchronized way using switches. Users can adjust the light-show settings and change the system with different patterns of blinking using the switches.

## How it Works
The purpose of this system is to control RGB LED light strips to create stunning and synchronized visual effects. Users can manipulate the light show's settings and switch between different patterns of blinking using switches.

The system is operated using the following inputs:
Color switch: Three separate switches for controlling the Red, Green, and Blue channels.
Speed switch: Adjusts the speed of the light show by incrementing or decrementing the speed.
Pattern switch: Selects different patterns for the light show.
The output of the system consists of control signals for the RGB LED strips. These control signals are PWM (Pulse Width Modulation) signals for the Red, Green, and Blue channels.

The project's hardware peripherals are the LEDs, which serve as the primary visual output for the light-show system.

To ensure the system's proper functioning, a testing and verification methodology based on the Universal Verification Methodology (UVM) framework is employed. The self-checking testbench is implemented in the tb.sv (testbench SystemVerilog) file. The test inputs are generated using sequences and sequence items within the UVM testbench environment. Monitors are used to observe the output of the device under test (DUT) and compare it to the expected output using a scoreboard. Assertions are employed to check the DUT's behavior throughout the simulation.

## Inputs/Outputs
Inputs:
Color switch (3 switches for Red, Green, and Blue channels)
Speed switch (increments/decrements speed of the light show)
Pattern switch (selects different patterns)
Outputs:
RGB LED strips control signals (PWM signals for Red, Green, and Blue channels)


## Hardware Peripherals
LEDs are the hardware peripherals in this project.

## Design Testing / Bringup
The testing and verification methodology used here is based on the UVM (Universal Verification Methodology) framework. The self-checking testbench is implemented in the tb.sv file. The test inputs are generated using sequences and sequence items, which are part of the UVM testbench environment. Monitors are used to observe the DUT's output and compare it with the expected output using a scoreboard. Assertions are used to check the DUT's behavior during the simulation.

