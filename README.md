# ROCm on Debian

ROCm 5.4.2 has a problem with Debian Bookworm where it asks for dependencies that don't exist.
This script creates dummy packages to allow the installer to run and installs ROCm 5.4.2 with the current known options that work on Debian.

OpenCL should work for stable diffusion, blender, llama.cpp, etc etc

### Usage:
Just run `./install.sh` and the script should take care of everyhting. Everything there is self explanatory.
