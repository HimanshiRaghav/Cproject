#!/bin/bash

echo "Running test_exec..."
if [ -f "./test_exec" ]; then
  chmod +x ./test_exec
  ./test_exec
else
  echo "test_exec not found!"
  exit 1
fi
