add_executable(calculator_tests
    TestCalculator.cpp
)

target_link_libraries(calculator_tests
    calculator
    gtest_main
)
