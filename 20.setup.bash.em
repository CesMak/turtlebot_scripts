#!/bin/bash

#NOTE: if you want to change the export variables
#It is necessary to turtle make so that your new variables will take action!
#also note that if there occurs a decode python error this file is the responsible for such an error.

# DO NOT REMOVE THIS BLOCK UNLESS YOU DON'T WANT TO USE CUSTOM SCRIPTS
@[if DEVELSPACE]@
export ROSWSS_SCRIPTS="@(PROJECT_SOURCE_DIR)/scripts:$ROSWSS_SCRIPTS"
@[else]@
export ROSWSS_SCRIPTS="@(CMAKE_INSTALL_PREFIX)/@(CATKIN_PACKAGE_SHARE_DESTINATION)/scripts:$ROSWSS_SCRIPTS"
@[end if]@

# SET HERE YOUR WORKSPACE PREFIX
export ROSWSS_PREFIX="turtle"
export ROSWSS_ROOT_RELATIVE_PATH="../.."    # Relative path to workspace root from package location

# SETUP YOUR ENVIRONMENT HERE
export ONBOARD_LAUNCH_PKG=""                # Name of your main onboard launch package
export GAZEBO_LAUNCH_PKG="turtlebot1_gazebo"                 # Package name where your Gazebo worlds are stored
export GAZEBO_WORLDS_PKG="turtlebot1_gazebo"                 # Package name where your Gazebo worlds are stored
export ROBOT_MASTER_HOSTNANE=""             # Hostname running ros master
export ROBOT_HOSTNAMES=""                   # Hostnames of all available robot computers
export ROBOT_USER=""                        # Main login user name for robot computers
export GAZEBO_LAUNCH_FILE="turtlebot1_launch_all_robots.launch"  

export TURTLEBOT1_MODEL="roomba"  #roomba create kobuki       caution roomba and create is at the moment the same base!
export GAZEBO_MODEL_PATH=$WS_ROOT/src/turtlebot/turtlebot1_simulations/turtlebot1_gazebo/models
