set(UNIT_TEST     OFF         CACHE BOOL   "Enable unit tests")
set(COVERAGE      OFF         CACHE BOOL   "Enable test coverage")

set(GTEST_PATH    "DOWNLOAD"  CACHE PATH   "Path to GTEST (or DOWNLOAD to fetch automatically")
set(GTEST_VERSION "v1.14.0"   CACHE STRING "The version of GTEST to use")

set(BUILD_GMOCK   OFF         CACHE BOOL   "Build GMOCK")
set(INSTALL_GTEST OFF         CACHE BOOL   "Install GTEST to local environment")
