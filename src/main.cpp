#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 5.0, b = 3.0;

    std::cout << "Addition: " << calc.Add(a, b) << std::endl;
    std::cout << "Subtraction: " << calc.Sub(a, b) << std::endl;

    return 0;
}
