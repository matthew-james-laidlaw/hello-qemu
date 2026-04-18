add_library(calculator
    Calculator.cpp
)

target_include_directories(calculator
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)
