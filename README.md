# ZeroToASIC
This repo contains my project files from [ZeroToASIC course](https://www.zerotoasiccourse.com/).

# Source files
The source files for Frequency Counter and RGB Mixer can be found under `ProjectName/src`.

# Project Overview

## RGB Colour Mixer
This project consists of 3 modules:
 - PWM
 - Debouncer
 - Rotary Encoder

## Frequency Counter
This project consists of 2 modules:
 - Edge_detect
 - Seven_segment
 
 # Testing the project
 
 ## Testing Individual Modules
 To test each module individually, clone the repository and run the following command:
  - Test the source code: Run `make test_(module_name)`. Module_name can be pwm/debounce/encoder in case of RGB Colour Mixer or edge_detect/seven_segment in case of Frequency Counter.
  - To load waveform on GTKwave and visualize timing diagram: Run `make show_(module_name)`.
  - To view the synthesized output of modules: Run `make show_synth_(module_name)`.
  - To view the mapping of synthesized design to standard cells: Run `xdot docs/(module_name).dot`.

## Testing Entire Design
To test the entire design and run the simulation, use the following command:
 - RGB Colour Mixer
   - Test design: `make test_rgb_mixer`.
   - Run simulation: `make show_rgb_mixer`.
 
 - Frequency Counter
   - Test design: `make frequency_counter`.
   - Run simulation: `make show_frequency_counter`.

*Note: Before running the commands, all the required software dependencies must be downloaded. The necessary path variables must also be set for the commands to run as expected.*
