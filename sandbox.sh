#!/bin/sh

##########################################################################
# compile.sh - Unix/X11 configuration script
# $Date: 2024-05-11 14:24:00 $
#
#This script starts the application, making sure that your ld linker
#can find the glfw.so shared library, and load it.
##########################################################################

export LD_LIBRARY_PATH=$(pwd)/external/superbible6/extern/glfw-2.7.6/lib/x11/:$LD_LIBRARY_PATH
./builds/debug_x64/sandbox