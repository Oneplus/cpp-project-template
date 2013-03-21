cmake_minimum_required (VERSION 2.8.0)
project (cpp-project-template)

# config project attributes
set (PROJECT_VERSION            0.0.1)

# set cmake modules path
set (CMAKE_MODULE_PATH          ${PROJECT_SOURCE_DIR}/cmake)

# config output directories
set (EXECUTABLE_OUTPUT_PATH     ${PROJECT_SOURCE_DIR}/bin)
set (LIBRARY_OUTPUT_PATH        ${PROJECT_SOURCE_DIR}/lib)

# config source dir
set (SOURCE_DIR                 ${PROJECT_SOURCE_DIR}/src)
set (TEST_DIR                   ${PROJECT_SOURCE_DIR}/test)
set (THIRDPARTY_DIR             ${PROJECT_SOURCE_DIR}/thirdparty)

# compile shipped libraries
add_subdirectory (thirdparty)

# compile source
add_subdirectory (src)

# compile test
add_subdirectory (test)
