# ZeroToASIC
This repo contains my project files from [ZeroToASIC course](https://www.zerotoasiccourse.com/).

# Source files
The source files for Frequency Counter and RGB Mixer can be found under `ProjectName/src`.

# Testing the project
## RGB Colour Mixer
This project consists of 3 modules:
 - PWM
 - Debouncer
 - Rotary Encoder
 
 To test each module individually, clone the repository and run the following command:
  - Test the source code: Run `make test_(module_name)`. Module_name can be pwm, debounce or encoder.
  - To load waveform on GTKwave and visualize timing diagram: Run `make show_(module_name)`.
  - To view the synthesized output of modules: Run `make show_synth_(module_name)`.
