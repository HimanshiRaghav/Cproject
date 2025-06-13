#!/bin/bash

# Determine build system
if [ -f "CMakeLists.txt" ]; then
  echo "Detected CMake project."
  echo "Running test_exec..."
  if [ -f "./build/test_exec" ]; then
    ./build/test_exec
  else
    echo "test_exec not found in ./build!"
    exit 1
  fi

elif [ -f "Makefile" ]; then
  echo "Detected Make project."
  echo "Running test_exec..."
  if [ -f "./test_exec" ]; then
    chmod +x ./test_exec
    ./test_exec
  else
    echo "test_exec not found!"
    exit 1
  fi

else
  echo "No recognized build system found (CMakeLists.txt or Makefile missing)."
  exit 1
fi
