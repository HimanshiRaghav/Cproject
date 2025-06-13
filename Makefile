CXX ?= g++
CXXFLAGS = -std=c++17 -Wall -I.

SRC_DIR = src
TEST_DIR = tests

APP_SRC = $(SRC_DIR)/main.cpp $(SRC_DIR)/math.cpp
TEST_SRC = $(TEST_DIR)/test.cpp $(SRC_DIR)/math.cpp

all: app test

app: $(APP_SRC)
	$(CXX) $(CXXFLAGS) $(APP_SRC) -o app

test: $(TEST_SRC)
	$(CXX) $(CXXFLAGS) $(TEST_SRC) -o test

clean:
	rm -f app test
