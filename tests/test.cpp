#include <iostream>
#include <cassert>
#include "../src/math.h"
int add(int a, int b);

int main() {
    assert(add(2, 3) == 5);
    std::cout << "All tests passed.\n";
    return 0;
}
