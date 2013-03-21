add_subdirectory (unittest)

include_directories (. ../src)
set (foobar_demo_SRC                test_foobar.cpp)
add_executable (foobar_demo         ${foobar_demo_SRC})
target_link_libraries (foobar_demo  foobar)

# add ctest test cases
add_test (foobar_unittest ${EXECUTABLE_OUTPUT_PATH}/foobar_unittest)
add_test (failed_unittest ${EXECUTABLE_OUTPUT_PATH}/failed_uniitest)
# 
add_test (NAME foobar_demo
    COMMAND ${CMAKE_COMMAND} 
    -DTEST_PROG=${EXECUTABLE_OUTPUT_PATH}/foobar_demo
    -DTEST_PROG_IN=${DATA_DIR}/data.in
    -DTEST_PROG_OUT=${DATA_DIR}/data.tmp
    -DTEST_PROG_EXPECTED=${DATA_DIR}/data.out
    -P ${CMAKE_MODULE_PATH}/ResultDiff.cmake)
