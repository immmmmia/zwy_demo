# Install script for directory: /home/mia/catkin_ws/src/vision_msgs-noetic-devel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mia/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_msgs/msg" TYPE FILE FILES
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/BoundingBox2D.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/BoundingBox2DArray.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/BoundingBox3D.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/BoundingBox3DArray.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/Classification2D.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/Classification3D.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/Detection2DArray.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/Detection2D.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/Detection3DArray.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/Detection3D.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/ObjectHypothesis.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/ObjectHypothesisWithPose.msg"
    "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/msg/VisionInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_msgs/cmake" TYPE FILE FILES "/home/mia/catkin_ws/build/vision_msgs-noetic-devel/catkin_generated/installspace/vision_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/include/vision_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/share/roseus/ros/vision_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/share/common-lisp/ros/vision_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/share/gennodejs/ros/vision_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mia/catkin_ws/devel/lib/python3/dist-packages/vision_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/lib/python3/dist-packages/vision_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mia/catkin_ws/build/vision_msgs-noetic-devel/catkin_generated/installspace/vision_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_msgs/cmake" TYPE FILE FILES "/home/mia/catkin_ws/build/vision_msgs-noetic-devel/catkin_generated/installspace/vision_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_msgs/cmake" TYPE FILE FILES
    "/home/mia/catkin_ws/build/vision_msgs-noetic-devel/catkin_generated/installspace/vision_msgsConfig.cmake"
    "/home/mia/catkin_ws/build/vision_msgs-noetic-devel/catkin_generated/installspace/vision_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vision_msgs" TYPE FILE FILES "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vision_msgs" TYPE DIRECTORY FILES "/home/mia/catkin_ws/src/vision_msgs-noetic-devel/include/vision_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/mia/catkin_ws/build/vision_msgs-noetic-devel/test/cmake_install.cmake")

endif()

