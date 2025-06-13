CXX ?= g++
CXXFLAGS = -std=c++17 -Wall -I.

APP_SRC = src/main.cpp src/math.cpp
TEST_SRC = tests/test.cpp src/math.cpp

APP_BIN = app
BUILD_DIR = build
TEST_BIN = $(BUILD_DIR)/test_exec

all: $(APP_BIN) $(TEST_BIN)

$(APP_BIN): $(APP_SRC)
	$(CXX) $(CXXFLAGS) $(APP_SRC) -o $(APP_BIN)

# Ensure build directory exists before compiling test_exec
$(TEST_BIN): $(TEST_SRC)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o $(TEST_BIN)

print-debug:
	@pwd
	@echo "APP_SRC = $(APP_SRC)"
	@echo "TEST_SRC = $(TEST_SRC)"
	@echo "Checking if test_exec is built..."
	@ls -l $(TEST_BIN) || echo "$(TEST_BIN) not found"

CURRENT_DIR := $(shell pwd)

print-dir:
	@echo "Current working directory: $(CURRENT_DIR)"
