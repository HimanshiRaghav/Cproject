CXX ?= g++
CXXFLAGS = -std=c++17 -Wall -I.

SRC = src/main.cpp
TEST = tests/test.cpp

all: test

test:
  $(CXX) $(CXXFLAGS) $(SRC) $(TEST) -o test

clean:
  rm -f test
