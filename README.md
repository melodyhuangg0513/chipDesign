

# Programmable Light-show System

Melody Huang
ChipDesign StucoSpring 2023 Final Tapeout Project

## Overview
a programmable light-show system which can control RGB LED light strips to generate fabulous visual effects in a synchronized way using switches. Users can adjust the light-show settings and change the system with different patterns of blinking using the switches.

## How it Works
(deeper description of your project's internal operations, along with any diagrams. large parts of this can likely be copied from your project design plan and/or RTL checkpoint submission)

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

