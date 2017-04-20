# path to compiler and utilities
# specify the cross compiler
SET(CMAKE_C_COMPILER arm-hisiv300-linux-gcc)
SET(CMAKE_CXX_COMPILER arm-hisiv300-linux-g++)

# Name of the target platform
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR arm)

# Version of the system
SET(CMAKE_SYSTEM_VERSION 1)

# custom
set(TOOLCHAIN_PATH arm/hisiv300)
add_definitions(-Wall -Wno-unused-local-typedefs -O2 -Os -fomit-frame-pointer)

