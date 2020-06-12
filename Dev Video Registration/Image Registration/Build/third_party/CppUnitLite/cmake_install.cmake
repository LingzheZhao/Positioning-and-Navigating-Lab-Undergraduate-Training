# Install script for directory: /mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/src/third_party/CppUnitLite" TYPE FILE FILES
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/CMakeLists.txt"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/Failure.h"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/SimpleString.h"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/Test.h"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/TestHarness.h"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/TestRegistry.h"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/TestResult.h"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/Failure.cpp"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/SimpleString.cpp"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/Test.cpp"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/TestRegistry.cpp"
    "/mnt/c/Users/86177/IPOL_AC_RANSAC/src/third_party/CppUnitLite/TestResult.cpp"
    )
endif()

