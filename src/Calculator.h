#pragma once

namespace Calculator
{

/**
 * @brief Adds two integers.
 * @param a The first integer.
 * @param b The second integer.
 * @return The sum of a and b.
 */
auto Add(int a, int b) -> int;

/**
 * @brief Subtracts the second integer from the first integer.
 * @param a The first integer.
 * @param b The second integer.
 * @return The difference of a and b.
 */
auto Subtract(int a, int b) -> int;

/**
 * @brief Multiplies two integers.
 * @param a The first integer.
 * @param b The second integer.
 * @return The product of a and b.
 */
auto Multiply(int a, int b) -> int;

/**
 * @brief Divides the first integer by the second integer.
 * @param a The first integer.
 * @param b The second integer.
 * @return The quotient of a and b.
 * @throws std::invalid_argument if b is zero.
 */
auto Divide(int a, int b) -> int;

} // namespace Calculator
