find_program(CMAKE_C_COMPILE gcc)
if(CMAKE_C_COMPILER STREQUAL "CMAKE_C_COMPILER-NOTFOUND")
    message(FATAL_ERROR "Could not find compiler: gcc")
endif()

find_program(CMAKE_CXX_COMPILER g++)
if(CMAKE_CXX_COMPILER STREQUAL "CMAKE_CXX_COMPILER-NOTFOUND")
    message(FATAL_ERROR "Could not find compiler: g++")
endif()

# CMAKE_C_COMPILER_VERSION is not guaranteed to be defined.
EXECUTE_PROCESS( COMMAND ${CMAKE_CXX_COMPILER} -dumpversion OUTPUT_VARIABLE GCC_VERSION )
# Address Sanitizer is only supported by GCC version later than 4.8
if(GCC_VERSION VERSION_GREATER_EQUAL 4.8)
    string(APPEND CMAKE_CXX_FLAGS " -fsanitize=address")
endif()
