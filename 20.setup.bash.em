#!/bin/bash


#NOTE: if you want to change the export variables
#It is necessary to turtle make so that your new variables will take action!

# DO NOT REMOVE THIS BLOCK UNLESS YOU DON'T WANT TO USE CUSTOM SCRIPTS
@[if DEVELSPACE]@
export ROSWSS_SCRIPTS="@(PROJECT_SOURCE_DIR)/scripts:$ROSWSS_SCRIPTS"
@[else]@
export ROSWSS_SCRIPTS="@(CMAKE_INSTALL_PREFIX)/@(CATKIN_PACKAGE_SHARE_DESTINATION)/scripts:$ROSWSS_SCRIPTS"
@[end if]@

# SET HERE YOUR WORKSPACE PREFIX
export ROSWSS_PREFIX="turtle"
export ROSWSS_ROOT_RELATIVE_PATH="../.."    # Relative path to workspace root from package location


# if changes here turtlemake before changes are working!
export GAZEBO_LAUNCH_PKG="turtlebot1_gazebo"  #turtlebot1_gazebo turtlebot1_rviz
export GAZEBO_LAUNCH_FILE="turtlebot1_launch_all_robots.launch"   #turtlebot1_launch_all_robots.launch  #turtlebot1_empty_world.launch
export GAZEBO_LAUNCH_W_ONBOARD_FILE=""
export GAZEBO_WORLDS_PKG="turtlebot1_gazebo"
export AUTOSTART_LAUNCH_PKG=""
export ROBOT_MASTER_HOSTNANE=""
export ROBOT_HOSTNAMES=""

# TurtleBot specific exports
export TURTLEBOT1_MODEL="roomba"  #roomba create kobuki       caution roomba and create is at the moment the same base!
export GAZEBO_MODEL_PATH=$WS_ROOT/src/turtlebot/turtlebot1_simulations/turtlebot1_gazebo/models


#notes:
#kein package im package.
#teleop gazebo und rviz für turtlebot1
#turtlebot1 bringup.

# turtlebot3

