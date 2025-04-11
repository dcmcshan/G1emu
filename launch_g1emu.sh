#!/bin/bash

# Use home directory path
BASE_DIR="/home/parallels/GitHub/G1emu"
echo "Base directory: $BASE_DIR"

# Check if the build directory exists
BUILD_DIR="$BASE_DIR/unitree_mujoco/simulate/build"
echo "Build directory: $BUILD_DIR"

if [ ! -d "$BUILD_DIR" ]; then
    echo "Build directory does not exist: $BUILD_DIR"
    exit 1
fi

# Change to the build directory
if ! cd "$BUILD_DIR"; then
    echo "Failed to change to build directory: $BUILD_DIR"
    exit 1
fi

# Check if the simulator exists
if [ ! -f "./unitree_mujoco" ]; then
    echo "Simulator executable not found in: $BUILD_DIR"
    exit 1
fi

# Run the simulator
echo "Starting simulator..."
./unitree_mujoco 