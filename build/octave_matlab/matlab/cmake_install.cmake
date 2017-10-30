# Install script for directory: /home/philip/openrave_stable_version/openrave/octave_matlab/matlab

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-matlab")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.9/matlab" TYPE FILE FILES
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orcreate.cpp"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/socketconnect.h"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orread.cpp"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orwrite.cpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-matlab")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-matlab")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.9/matlab" TYPE FILE FILES
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyGetAABBs.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotSetActiveDOFs.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvCheckCollision.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyGetDOF.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotCheckSelfCollision.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotSetDOFValues.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotGetAttachedSensors.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotGetManipulators.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orProblemSendCommand.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvRayCollision.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvGetRobots.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvSetOptions.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotGetDOFLimits.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyGetAABB.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvTriangulate.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotControllerSend.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvClose.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotSensorSend.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvLoadPlugin.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvCreateProblem.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyGetTransform.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyGetJointValues.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotControllerSet.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotStartActiveTrajectory.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodySetJointTorques.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotGetActiveDOF.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyEnable.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvCreateRobot.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvGetBody.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvGetBodies.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orCommunicator.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvStepSimulation.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotGetDOFValues.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotSensorConfigure.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvDestroyProblem.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvPlot.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodySetTransform.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyDestroy.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvWait.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotSensorGetData.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodyGetLinks.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orBodySetJointValues.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orSetCommunication.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvCreateKinBody.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvCreateModule.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orRobotSetActiveManipulator.m"
    "/home/philip/openrave_stable_version/openrave/octave_matlab/orEnvLoadScene.m"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-matlab")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-matlab")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/openrave-0.9/matlab" TYPE DIRECTORY FILES "/home/philip/openrave_stable_version/openrave/octave_matlab/examples" REGEX "/\\.svn$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "openrave0.9-dp-matlab")

