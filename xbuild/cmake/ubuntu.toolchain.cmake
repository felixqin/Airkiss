# path to compiler and utilities
# specify the cross compiler
SET(CMAKE_C_COMPILER gcc-4.8)
SET(CMAKE_CXX_COMPILER g++-4.8)

set(CMAKE_C_FLAGS "-m32 ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-m32 ${CMAKE_CXX_FLAGS}")

# Name of the target platform
SET(CMAKE_SYSTEM_NAME Linux)
#SET(CMAKE_SYSTEM_PROCESSOR arm)

# Version of the system
SET(CMAKE_SYSTEM_VERSION 1)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# custom
set(TOOLCHAIN_32BIT yes)
set(TOOLCHAIN_PATH ubuntu)
add_compile_options(-Wall -Wno-unused-local-typedefs -O2 -Os -fomit-frame-pointer)
add_compile_options(-Wno-narrowing)

