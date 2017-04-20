
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.11)
set(TOPDIR ${CMAKE_CURRENT_SOURCE_DIR})
set(OUTDIR ${TOPDIR}/out)
set(BUILDDIR ${TOPDIR}/build-cmake)

#include(${TOPDIR}/xbuild/cmake/ubuntu.toolchain.cmake)
include(${TOPDIR}/xbuild/cmake/hisiv300.toolchain.cmake)


PROJECT(airkiss)

SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS_DEBUG "-g -Wall")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
#add_compile_options(-std=c++11)



set(EXECUTABLE_OUTPUT_PATH ${OUTDIR}/airkiss)

INCLUDE_DIRECTORIES(
    ${TOPDIR}/libiw
)

LINK_DIRECTORIES(
)

ADD_EXECUTABLE(airkiss
    main.c
    capture/common.c capture/osdep.c capture/linux.c capture/radiotap/radiotap-parser.c
    utils/wifi_scan.c airkiss.c
    libiw/iwlib.c
)

target_link_libraries(airkiss
    rt m
)

