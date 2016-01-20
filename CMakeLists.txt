# ==============================================================================
# NLOPT CMake File
# ==============================================================================

CMAKE_MINIMUM_REQUIRED(VERSION 2.8 FATAL_ERROR)
#SET(CMAKE_VERBOSE_MAKEFILE ON)

# define project name ----------------------------------------------------------
SET(NLOPT_VERSION 2.3.0)

# what languages we use --------------------------------------------------------
ENABLE_LANGUAGE(C)

# ==============================================================================
# output directories -----------------------------------------------------------
# ==============================================================================

SET(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)

# ==============================================================================
# conditional setup ------------------------------------------------------------
# ==============================================================================

SET(LIBS_SHARED       ON  CACHE BOOL "Should the shared version of csparse library be built?")
SET(LIBS_STATIC       OFF CACHE BOOL "Should the static version of csparse library be built?")

# ==============================================================================
# compiler setups --------------------------------------------------------------
# ==============================================================================

IF(NOT DEFINED COMPOSITE_PROJECT)
    # C++ options
    SET(CMAKE_C_FLAGS_RELEASE "-O2 -Wno-deprecated-declarations")
    SET(CMAKE_C_FLAGS_DEBUG "-g -Wall -Wno-deprecated-declarations -Werror -pedantic-errors -Wundef -Wno-long-long")

    SET(CMAKE_BUILD_TYPE Release)
    #SET(CMAKE_BUILD_TYPE Debug)
ENDIF(NOT DEFINED COMPOSITE_PROJECT)

# ==============================================================================
# project subdirectories  ------------------------------------------------------
# ==============================================================================

ADD_SUBDIRECTORY(src)
