#include <Calculator.h>

#include <stdexcept>

namespace Calculator
{

auto Add(int a, int b) -> int
{
    return a + b;
}

auto Subtract(int a, int b) -> int
{
    return a - b;
}

auto Multiply(int a, int b) -> int
{
    return a * b;
}

auto Divide(int a, int b) -> int
{
    if (b == 0)
    {
        throw std::invalid_argument("Division by zero is not allowed.");
    }
    return a / b;
}

} // namespace Calculator
