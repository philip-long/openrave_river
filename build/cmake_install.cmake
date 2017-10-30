# Install script for directory: /home/philip/openrave_stable_version/openrave

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/philip/openrave_stable_version/openrave/build/openrave0.9-config")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")
  execute_process(COMMAND /usr/bin/cmake -E make_directory ${CMAKE_INSTALL_PREFIX}/bin COMMAND /usr/bin/cmake -E make_directory ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig COMMAND /usr/bin/cmake -E make_directory ${CMAKE_INSTALL_PREFIX}/)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")
  execute_process(COMMAND /usr/bin/cmake -E create_symlink openrave0.9-config openrave-config WORKING_DIRECTORY ${CMAKE_INSTALL_PREFIX}/bin)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/openrave-0.9" TYPE FILE FILES
    "/home/philip/openrave_stable_version/openrave/build/openrave-config.cmake"
    "/home/philip/openrave_stable_version/openrave/build/openrave-config-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.9" TYPE FILE FILES "/home/philip/openrave_stable_version/openrave/build/openrave_completion.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/philip/openrave_stable_version/openrave/build/openrave0.9.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/philip/openrave_stable_version/openrave/build/openrave0.9-core.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")
  execute_process(COMMAND /usr/bin/cmake -E create_symlink openrave0.9.pc openrave.pc WORKING_DIRECTORY ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")
  execute_process(COMMAND /usr/bin/cmake -E create_symlink openrave0.9-core.pc openrave-core.pc WORKING_DIRECTORY ${CMAKE_INSTALL_PREFIX}/lib/pkgconfig)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.9" TYPE FILE FILES "/home/philip/openrave_stable_version/openrave/build/openrave.bash")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openrave-0.9/openrave" TYPE FILE FILES
    "/home/philip/openrave_stable_version/openrave/include/openrave/plannerparameters.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/iksolver.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/viewer.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/trajectory.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/openrave.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/interface.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/mathextra.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/collisionchecker.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/planningutils.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/plugininfo.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/sensorsystem.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/environment.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/xmlreaders.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/plugin.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/module.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/geometry.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/physicsengine.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/controller.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/spacesampler.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/kinbody.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/planner.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/utils.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/sensor.h"
    "/home/philip/openrave_stable_version/openrave/include/openrave/robot.h"
    "/home/philip/openrave_stable_version/openrave/build/include/openrave/interfacehashes.h"
    "/home/philip/openrave_stable_version/openrave/build/include/openrave/config.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-cbindings-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openrave-0.9/openrave_c" TYPE FILE FILES "/home/philip/openrave_stable_version/openrave/include/openrave_c/openrave_c.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-cbindings-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openrave-0.9/rave" TYPE FILE FILES
    "/home/philip/openrave_stable_version/openrave/rave/rave.h"
    "/home/philip/openrave_stable_version/openrave/rave/plugin.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-dev")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.9" TYPE FILE FILES
    "/home/philip/openrave_stable_version/openrave/COPYING"
    "/home/philip/openrave_stable_version/openrave/LICENSE.lgpl"
    "/home/philip/openrave_stable_version/openrave/LICENSE.apache"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-base")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/cpp-gen-md5/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/3rdparty/crlibm-1.0beta4/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/3rdparty/minizip/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/3rdparty/ivcon/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/3rdparty/ann/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/3rdparty/fparser-4.5/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/3rdparty/convexdecomposition/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/src/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/octave_matlab/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/python/cmake_install.cmake")
  INCLUDE("/home/philip/openrave_stable_version/openrave/build/plugins/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/philip/openrave_stable_version/openrave/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/philip/openrave_stable_version/openrave/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
