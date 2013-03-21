ENABLE_LANGUAGE (Fortran)

GET_FILENAME_COMPONENT (Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)

SET(INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include)

MESSAGE(STATUS ${INCLUDE_DIR})

IF (Fortran_COMPILER_NAME STREQUAL "gfortran")
    # gfortran
    SET (CMAKE_Fortran_FLAGS_RELEASE "-funroll-all-loops -fno-f2c -O3")
    SET (CMAKE_Fortran_FLAGS_DEBUG   "-fno-f2c -O0 -g")
ELSEIF (Fortran_COMPILER_NAME STREQUAL "ifort")
    # ifort (untested)
    SET (CMAKE_Fortran_FLAGS_RELEASE "-f77rtl -O3")
    SET (CMAKE_Fortran_FLAGS_DEBUG   "-f77rtl -O0 -g")
ELSEIF (Fortran_COMPILER_NAME STREQUAL "g77")
    # g77
    SET (CMAKE_Fortran_FLAGS_RELEASE "-funroll-all-loops
    -fno-f2c -O3 -m32")
    SET (CMAKE_Fortran_FLAGS_DEBUG   "-fno-f2c -O0 -g -m32")
ELSE (Fortran_COMPILER_NAME STREQUAL "gfortran")
    MESSAGE ("CMAKE_Fortran_COMPILER full path: "
        ${CMAKE_Fortran_COMPILER})
    MESSAGE ("Fortran compiler: "
        ${Fortran_COMPILER_NAME})
    MESSAGE ("No optimized Fortran compiler flags
    are known, we just try -O2...")
    SET (CMAKE_Fortran_FLAGS_RELEASE "-O2")
    SET (CMAKE_Fortran_FLAGS_DEBUG   "-O0 -g")
ENDIF (Fortran_COMPILER_NAME STREQUAL
    "gfortran")

