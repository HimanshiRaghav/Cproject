CXX ?= g++
CXXFLAGS = -std=c++17 -Wall -I.

SRC_DIR = src
TEST_DIR = tests

APP_SRC = $(SRC_DIR)/main.cpp $(SRC_DIR)/math.cpp
TEST_SRC = $(TEST_DIR)/test.cpp $(SRC_DIR)/math.cpp

APP_BIN = app
TEST_BIN = test_exec


all: $(APP_BIN) $(TEST_BIN)

$(APP_BIN): $(APP_SRC)
	$(CXX) $(CXXFLAGS) $(APP_SRC) -o $(APP_BIN)
$(TEST_BIN): $(TEST_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o $(TEST_BIN)

clean:
	rm -f $(APP_BIN) $(TEST_BIN)
