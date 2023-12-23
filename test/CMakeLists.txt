# Download GTEST from GitHub if local repo not specified
if("${GTEST_PATH}" STREQUAL "DOWNLOAD")
    include(FetchContent)
    FetchContent_Declare(
        googletest
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG        ${GTEST_VERSION}
    )
    FetchContent_MakeAvailable(googletest)
else()
# Directly use local repo
    add_subdirectory(${GTEST_PATH})
    include_directories(${GTEST_PATH} ${GTEST_PATH}/include)
endif()

add_executable(test)

target_sources(test
    PRIVATE
        test.cpp
)

target_link_libraries(test
    PRIVATE
        gtest
        gtest_main
        methods
)

add_test(NAME test COMMAND test)
