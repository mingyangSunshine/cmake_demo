find_program(CMAKE_C_COMPILER clang)
if(CMAKE_C_COMPILER STREQUAL "CMAKE_C_COMPILER-NOTFOUND")
    message(FATAL_ERROR "Could not find compiler: clang")
endif()

find_program(CMAKE_CXX_COMPILER clang++)
if(CMAKE_CXX_COMPILER STREQUAL "CMAKE_CXX_COMPILER-NOTFOUND")
    message(FATAL_ERROR "Could not find compiler: clang++")
endif()

string(APPEND CMAKE_CXX_FLAGS " -g -std=c++14 -Wall -fsanitize=address")
