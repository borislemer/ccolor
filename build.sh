#!/bin/bash
# Simple build script for ccolor with emoji support

# Check if gcc is available
if ! command -v gcc &> /dev/null; then
    echo "Error: gcc is not installed."
    echo "Please install build tools first:"
    echo "  sudo apt-get install build-essential libncursesw5-dev"
    exit 1
fi

# Compile ccolor
echo "Compiling ccolor..."
gcc -o ccolor cmatrix.c \
    -lncursesw \
    -std=gnu99 \
    -D_GNU_SOURCE \
    -DEXCLUDE_CONFIG_H \
    -DNCURSES_WIDECHAR=1 \
    -DVERSION=\"2.0\" \
    -DUSE_TIOCSTI \
    -DHAVE_NCURSES_H \
    -DHAVE_SYS_IOCTL_H \
    -DHAVE_UNISTD_H \
    -DHAVE_TERMIOS_H \
    -DHAVE_GETOPT_H \
    -DHAVE_USE_DEFAULT_COLORS \
    -Wall

if [ $? -eq 0 ]; then
    echo "Build successful! Run ./ccolor to start."
else
    echo "Build failed. Please check the error messages above."
    exit 1
fi

