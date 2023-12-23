# CMake Demo

## Introduction

This demo aims to demonstrate the integration of CMake and Google Test, as well as CMake support on different compilers and compiler features, including coverage and AddressSanitizer.

## How to build

### Main application

To build main appliction, use commands below:

```
cd <cmake_demo_path>
cmake -G"Unix Makefiles" -S . -B <build_dir>
cmake --build <build_dir>
```

The runnable application is `<build_dir>/main`.

### Unit Test

To enable unit test, use commands below:

```
cd <cmake_demo_path>
cmake -G"Unix Makefiles" -S . -B <build_dir> -DUNIT_TEST=ON
cmake --build <build_dir>
```

The runnable unit test application is `<build_dir>/test/test`.

__Note:__ CMake clones dependency repo _GoogleTest_ from GitHub by default. If it is available in local environment, specify the local path with config `GTEST_PATH` in CMake config command.

### Configuration

The demo supports manual configuration on compiler and coverage reports.

#### Select compiler

Two compilers are supported: `GCC`, `MinGW-GCC` and `CLANG`, with corresponding toolchain files:

 * GCC: toolchain_GCC.cmake
 * MinGW-GCC: toolchain_MINGW_GCC.cmake
 * CLANG: toolchain_CLANG.cmake

To manually select compiler, set `TOOLCHAIN_FILE` to the toolchain file in CMake config command. For example, select CLANG with command:

```
cmake -G"Unix Makefiles" -S . -B <build_dir> -DTOOLCHAIN_FILE=toolchain_CLANG.cmake
```

#### Enable coverage report

When building unit test, it is supported to generate coverage report if config `COVERAGE` is set to `ON` with build command:

```
cmake -G"Unix Makefiles" -S . -B <build_dir> -DUNIT_TEST=ON -DCOVERAGE=ON
```

#### Other

For other detailed configurations, please refer to `config.cmake` for the default settings. User can also change the settings during CMake config stage.
