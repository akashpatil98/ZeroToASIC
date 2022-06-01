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
 To test each module individually, clone the repository and run the following command:
  - Test the source code: Run `make test_(module_name)`. Module_name can be pwm/debounce/encoder in case of RGB Colour Mixer or edge_detect/seven_segment in case of Frequency Counter.
  - To load waveform on GTKwave and visualize timing diagram: Run `make show_(module_name)`.
  - To view the synthesized output of modules: Run `make show_synth_(module_name)`.
  - To view the mapping of synthesized design to standard cells: Run `xdot docs/(module_name).dot
