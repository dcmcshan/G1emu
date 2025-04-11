cmake_minimum_required(VERSION 3.16)
project(G1emu)

# Add subdirectories
add_subdirectory(unitree_mujoco)
add_subdirectory(unitree_sdk2)

# Set build type to Release
set(CMAKE_BUILD_TYPE Release)

# Add executable
add_executable(g1emu src/main.cpp)

# Link against unitree_mujoco
target_link_libraries(g1emu unitree_mujoco) 