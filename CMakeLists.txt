cmake_minimum_required(VERSION 3.10)
project(Cproject)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Main app executable — add math.cpp here
add_executable(app src/main.cpp src/math.cpp)

# Test executable — also add math.cpp here
add_executable(test_exec tests/test.cpp src/math.cpp)
