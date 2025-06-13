#!/bin/bash

echo "Running test_exec..."

# Read build system from env var set by workflow input
if [ "$BUILD_SYSTEM" == "cmake" ]; then
  if [ -f "./build/test_exec" ]; then
    chmod +x ./build/test_exec
    ./build/test_execi
  else
    echo "test_exec not found in build directory!"
    exit 1
  fi
elif [ "$BUILD_SYSTEM" == "make" ]; then
  if [ -f "./test_exec" ]; then
    chmod +x ./test_execi
    ./test_exec
  else
    echo "test_exec not found in root directory!"
    exit 1
  fi
else
  echo "Unknown build system: $BUILD_SYSTEM"
  exit 1
fi
