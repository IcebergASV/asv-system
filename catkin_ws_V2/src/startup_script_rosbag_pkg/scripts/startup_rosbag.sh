#!/bin/bash

# Set the base directory name and version number
dir_base="rosbag_MI_testing"
version=1

# Generate the full directory name with the version number
dir_name="${dir_base}_${version}"

# Check if the directory already exists
while [ -d "/home/icebergasv/${dir_name}" ]; do
  # If it exists, increment the version number and try again
  version=$((version + 1))
  dir_name="${dir_base}_${version}"
done

# Create the new directory
mkdir "/home/icebergasv/${dir_name}"
echo "Created directory /home/icebergasv/${dir_name}"

cd /home/icebergasv/asv-system/catkin_ws_V2

roslaunch system_startup_pkg system_startup.launch & 
rosbag record -a -o /home/icebergasv/${dir_name}/
