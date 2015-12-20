cmake_minimum_required(VERSION 2.8)
add_definitions(-std=c++11)
set(CMAKE_CXX_FLAGS " -lrt -lm")
add_executable(lang-lambda1 lambda1.cpp)
