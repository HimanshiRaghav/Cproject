cmake_minimum_required(VERSION 3.10)
project(Cproject)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Main application executable
add_executable(app src/main.cpp)

# Test executable
add_executable(test_exec tests/test.cpp)
