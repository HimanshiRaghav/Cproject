CXX ?= g++
CXXFLAGS = -std=c++17 -Wall -I.

APP_SRC = src/main.cpp src/math.cpp
TEST_SRC = tests/test.cpp src/math.cpp

APP_BIN = app



all: $(APP_BIN) test_exec

$(APP_BIN): $(APP_SRC)
	$(CXX) $(CXXFLAGS) $(APP_SRC) -o $(APP_BIN)
test_exec: $(TEST_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o test_exec

