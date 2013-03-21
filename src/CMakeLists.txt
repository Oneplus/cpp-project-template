include (CMakeDetermineFortranCompiler)

option (HAVE_CONFIG "Have config file" on)

# check if there is fortran compiler on this platform
if (CMAKE_Fortran_COMPILER)
    enable_language (Fortran)
    option (WITH_FORTRAN "Compile with fortran" on)
else (CMAKE_Fortran_COMPILER)
    message (STATUS "fortran compiler is not found.")
endif (CMAKE_Fortran_COMPILER)

# example of configure time generate header
configure_file (
    ${SOURCE_DIR}/config.h.in
    ${SOURCE_DIR}/config.h)

set (foobar_SRC foo.cpp)
add_library(foobar ${foobar_SRC})
