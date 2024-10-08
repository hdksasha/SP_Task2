cmake_minimum_required(VERSION 3.23)
project(task2)

set(CMAKE_CXX_STANDARD 14)

include_directories(include)

add_library(calculator STATIC src/calculator.cpp)

add_executable(task2 src/main.cpp)

target_link_libraries(task2 calculator)




