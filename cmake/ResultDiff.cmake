message (STATUS ${TEST_PROG})
message (STATUS ${TEST_PROG_IN})
message (STATUS ${TEST_PROG_OUT})
message (STATUS ${TEST_PROG_EXPECTED})
execute_process (COMMAND "${TEST_PROG}" "${TEST_PROG_IN}" "${TEST_PROG_OUT}"
    RESULT_VARIABLE HAD_ERROR)

if (HAD_ERROR)
    message(FATAL_ERROR "Test failed")
endif(HAD_ERROR)

execute_process(COMMAND ${CMAKE_COMMAND} -E compare_files
    ${TEST_PROG_OUT} ${TEST_PROG_EXPECTED}
    RESULT_VARIABLE DIFFERENT)

if(DIFFERENT)
    message(FATAL_ERROR "Test failed - files differ")
endif()
