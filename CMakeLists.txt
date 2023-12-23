cmake_minimum_required (VERSION 3.14)

# Compiler configs
if(TOOLCHAIN_FILE)
    include(${TOOLCHAIN_FILE})
endif()
message("CMAKE_CXX_COMPILER: '${CMAKE_CXX_COMPILER}")

string(APPEND CMAKE_CXX_FLAGS " -g -std=c++14 -Wall")
if(COVERAGE)
    string(APPEND CMAKE_CXX_FLAGS " --coverage")
endif()

project(cmake_demo)

# Default config
include(config.cmake OPTIONAL)

# Add a methods library
add_library(methods STATIC)
target_include_directories(methods
    PUBLIC
        ./include
)
target_sources(methods
    PRIVATE
        src/methods.cpp
)

# Add a default main exe
add_executable(main)
target_sources(main
    PRIVATE
        main.cpp
)
target_link_libraries(main
    PRIVATE
        methods
)

# Build unit test
if(UNIT_TEST)
    add_subdirectory(test)
endif()

