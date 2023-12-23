find_program(CMAKE_C_COMPILER x86_64-w64-mingw32-gcc-posix)
if(CMAKE_C_COMPILER STREQUAL "CMAKE_C_COMPILER-NOTFOUND")
    message(FATAL_ERROR "Could not find compiler: x86_64-w64-mingw32-gcc-posix")
endif()

find_program(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++-posix)
if(CMAKE_CXX_COMPILER STREQUAL "CMAKE_CXX_COMPILER-NOTFOUND")
    message(FATAL_ERROR "Could not find compiler: x86_64-w64-mingw32-g++-posix")
endif()
