# Install script for directory: /home/mia/catkin_ws/src/t4ac_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/t4ac_msgs/msg" TYPE FILE FILES
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/BEV_detection.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/BEV_detections_list.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/BEV_tracker.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/BEV_trackers_list.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Bounding_Box_2D.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Bounding_Box_2D_list.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Bounding_Box_3D.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Bounding_Box_3D_list.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/GT_3D_Object.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/GT_3D_Object_list.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Obstacle.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Obstacles_list.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/CarControl.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/CarState.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/DbWCommand.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Node.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Way.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Lane.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/MonitorizedLanes.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/MonitorizedRegElem.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/RegulatoryElement.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Landmark.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/DM_path.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/DM_pose.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/DM_posestamped.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Location.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Rotation.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Traffic_Sign.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Traffic_Sign_List.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Transform.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Waypoint.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Path.msg"
    "/home/mia/catkin_ws/src/t4ac_msgs/msg/Vehicle.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/t4ac_msgs/cmake" TYPE FILE FILES "/home/mia/catkin_ws/build/t4ac_msgs/catkin_generated/installspace/t4ac_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/include/t4ac_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/share/roseus/ros/t4ac_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/share/common-lisp/ros/t4ac_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/share/gennodejs/ros/t4ac_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mia/catkin_ws/devel/lib/python3/dist-packages/t4ac_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mia/catkin_ws/devel/lib/python3/dist-packages/t4ac_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mia/catkin_ws/build/t4ac_msgs/catkin_generated/installspace/t4ac_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/t4ac_msgs/cmake" TYPE FILE FILES "/home/mia/catkin_ws/build/t4ac_msgs/catkin_generated/installspace/t4ac_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/t4ac_msgs/cmake" TYPE FILE FILES
    "/home/mia/catkin_ws/build/t4ac_msgs/catkin_generated/installspace/t4ac_msgsConfig.cmake"
    "/home/mia/catkin_ws/build/t4ac_msgs/catkin_generated/installspace/t4ac_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/t4ac_msgs" TYPE FILE FILES "/home/mia/catkin_ws/src/t4ac_msgs/package.xml")
endif()

