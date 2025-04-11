#include <iostream>
#include "unitree_mujoco/simulate/src/mujoco/simulate.h"

int main(int argc, char** argv) {
    std::cout << "G1 Emulator starting..." << std::endl;
    
    // Initialize simulator
    auto sim = std::make_unique<Simulate>();
    
    // Load configuration
    sim->Load("unitree_mujoco/simulate/config.yaml");
    
    // Run simulation
    sim->Run();
    
    return 0;
} 