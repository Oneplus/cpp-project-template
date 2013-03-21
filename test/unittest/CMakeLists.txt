# three library should be include
#   - local directory
#   - directory where include gtest header
#   - project output header
include_directories (./
    ${SOURCE_DIR}/
    ${THIRDPARTY_DIR}/gtest/include)

# add unittest executable
set (foobar_unittest_SRC           foobar_unittest.cpp)
add_executable (foobar_unittest    ${foobar_unittest_SRC})

# three libraries should be linked
#   - gtest
#   - pthread
#   - project libraraies
target_link_libraries (foobar_unittest
    gtest
    pthread
    foobar) 
