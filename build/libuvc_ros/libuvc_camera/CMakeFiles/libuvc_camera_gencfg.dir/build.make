# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/guoziwei/ROS/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/guoziwei/ROS/build

# Utility rule file for libuvc_camera_gencfg.

# Include the progress variables for this target.
include libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/progress.make

libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h
libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg: /home/guoziwei/ROS/devel/lib/python2.7/dist-packages/libuvc_camera/cfg/UVCCameraConfig.py


/home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h: /home/guoziwei/ROS/src/libuvc_ros/libuvc_camera/cfg/UVCCamera.cfg
/home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h: /opt/ros/kinetic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/guoziwei/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from cfg/UVCCamera.cfg: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h /home/guoziwei/ROS/devel/lib/python2.7/dist-packages/libuvc_camera/cfg/UVCCameraConfig.py"
	cd /home/guoziwei/ROS/build/libuvc_ros/libuvc_camera && ../../catkin_generated/env_cached.sh /home/guoziwei/ROS/build/libuvc_ros/libuvc_camera/setup_custom_pythonpath.sh /home/guoziwei/ROS/src/libuvc_ros/libuvc_camera/cfg/UVCCamera.cfg /opt/ros/kinetic/share/dynamic_reconfigure/cmake/.. /home/guoziwei/ROS/devel/share/libuvc_camera /home/guoziwei/ROS/devel/include/libuvc_camera /home/guoziwei/ROS/devel/lib/python2.7/dist-packages/libuvc_camera

/home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig.dox: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig.dox

/home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig-usage.dox: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig-usage.dox

/home/guoziwei/ROS/devel/lib/python2.7/dist-packages/libuvc_camera/cfg/UVCCameraConfig.py: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/guoziwei/ROS/devel/lib/python2.7/dist-packages/libuvc_camera/cfg/UVCCameraConfig.py

/home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig.wikidoc: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig.wikidoc

libuvc_camera_gencfg: libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg
libuvc_camera_gencfg: /home/guoziwei/ROS/devel/include/libuvc_camera/UVCCameraConfig.h
libuvc_camera_gencfg: /home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig.dox
libuvc_camera_gencfg: /home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig-usage.dox
libuvc_camera_gencfg: /home/guoziwei/ROS/devel/lib/python2.7/dist-packages/libuvc_camera/cfg/UVCCameraConfig.py
libuvc_camera_gencfg: /home/guoziwei/ROS/devel/share/libuvc_camera/docs/UVCCameraConfig.wikidoc
libuvc_camera_gencfg: libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/build.make

.PHONY : libuvc_camera_gencfg

# Rule to build all files generated by this target.
libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/build: libuvc_camera_gencfg

.PHONY : libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/build

libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/clean:
	cd /home/guoziwei/ROS/build/libuvc_ros/libuvc_camera && $(CMAKE_COMMAND) -P CMakeFiles/libuvc_camera_gencfg.dir/cmake_clean.cmake
.PHONY : libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/clean

libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/depend:
	cd /home/guoziwei/ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guoziwei/ROS/src /home/guoziwei/ROS/src/libuvc_ros/libuvc_camera /home/guoziwei/ROS/build /home/guoziwei/ROS/build/libuvc_ros/libuvc_camera /home/guoziwei/ROS/build/libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libuvc_ros/libuvc_camera/CMakeFiles/libuvc_camera_gencfg.dir/depend

