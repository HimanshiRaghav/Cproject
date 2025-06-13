#!/bin/bash

echo "Running test_exec..."
if [ -f "./build/test_exec" ]; then
  chmod +x ./build/test_exec
  ./build/test_exec
else
  echo "test_exec not found!"
  exit 1
fi
