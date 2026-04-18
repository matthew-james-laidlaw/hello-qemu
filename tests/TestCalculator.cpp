#include <gtest/gtest.h>

#include <Calculator.h>

TEST(CalculatorTest, Add) {
    EXPECT_EQ(Calculator::Add(2, 3), 5);
    EXPECT_EQ(Calculator::Add(-1, 1), 0);
    EXPECT_EQ(Calculator::Add(-2, -3), -5);
}

TEST(CalculatorTest, Subtract) {
    EXPECT_EQ(Calculator::Subtract(5, 3), 2);
    EXPECT_EQ(Calculator::Subtract(1, -1), 2);
    EXPECT_EQ(Calculator::Subtract(-5, -3), -2);
}

TEST(CalculatorTest, Multiply) {
    EXPECT_EQ(Calculator::Multiply(2, 3), 6);
    EXPECT_EQ(Calculator::Multiply(-1, 1), -1);
    EXPECT_EQ(Calculator::Multiply(-2, -3), 6);
}

TEST(CalculatorTest, Divide) {
    EXPECT_EQ(Calculator::Divide(6, 3), 2);
    EXPECT_EQ(Calculator::Divide(-1, 1), -1);
    EXPECT_EQ(Calculator::Divide(-6, -3), 2);
    EXPECT_THROW(Calculator::Divide(1, 0), std::invalid_argument);
}
