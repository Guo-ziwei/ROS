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

# Include any dependencies generated for this target.
include rpg_svo/svo_ros/CMakeFiles/vo.dir/depend.make

# Include the progress variables for this target.
include rpg_svo/svo_ros/CMakeFiles/vo.dir/progress.make

# Include the compile flags for this target's objects.
include rpg_svo/svo_ros/CMakeFiles/vo.dir/flags.make

rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o: rpg_svo/svo_ros/CMakeFiles/vo.dir/flags.make
rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o: /home/guoziwei/ROS/src/rpg_svo/svo_ros/src/vo_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/guoziwei/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o"
	cd /home/guoziwei/ROS/build/rpg_svo/svo_ros && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vo.dir/src/vo_node.cpp.o -c /home/guoziwei/ROS/src/rpg_svo/svo_ros/src/vo_node.cpp

rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vo.dir/src/vo_node.cpp.i"
	cd /home/guoziwei/ROS/build/rpg_svo/svo_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/guoziwei/ROS/src/rpg_svo/svo_ros/src/vo_node.cpp > CMakeFiles/vo.dir/src/vo_node.cpp.i

rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vo.dir/src/vo_node.cpp.s"
	cd /home/guoziwei/ROS/build/rpg_svo/svo_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/guoziwei/ROS/src/rpg_svo/svo_ros/src/vo_node.cpp -o CMakeFiles/vo.dir/src/vo_node.cpp.s

rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.requires:

.PHONY : rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.requires

rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.provides: rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.requires
	$(MAKE) -f rpg_svo/svo_ros/CMakeFiles/vo.dir/build.make rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.provides.build
.PHONY : rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.provides

rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.provides.build: rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o


# Object files for target vo
vo_OBJECTS = \
"CMakeFiles/vo.dir/src/vo_node.cpp.o"

# External object files for target vo
vo_EXTERNAL_OBJECTS =

/home/guoziwei/ROS/devel/lib/svo_ros/vo: rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o
/home/guoziwei/ROS/devel/lib/svo_ros/vo: rpg_svo/svo_ros/CMakeFiles/vo.dir/build.make
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /home/guoziwei/ROS/devel/lib/libsvo_visualizer.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libimage_transport.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libclass_loader.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/libPocoFoundation.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libdl.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libcv_bridge.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /home/guoziwei/ROS/devel/lib/libsvo.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_core.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_stuff.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_solver_cholmod.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_solver_csparse.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_solver_dense.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_solver_pcg.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/local/lib/libg2o_types_sba.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /home/guoziwei/myslam/fast/build/libfast.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libroslib.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/librospack.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libpython2.7.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /home/guoziwei/ROS/devel/lib/libvikit_ros.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libtf.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libtf2_ros.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libactionlib.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libmessage_filters.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libtf2.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /home/guoziwei/ROS/devel/lib/libvikit_common.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /home/guoziwei/myslam/Sophus/build/libSophus.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libroscpp.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/librosconsole.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/librostime.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /opt/ros/kinetic/lib/libcpp_common.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/guoziwei/ROS/devel/lib/svo_ros/vo: rpg_svo/svo_ros/CMakeFiles/vo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/guoziwei/ROS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/guoziwei/ROS/devel/lib/svo_ros/vo"
	cd /home/guoziwei/ROS/build/rpg_svo/svo_ros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
rpg_svo/svo_ros/CMakeFiles/vo.dir/build: /home/guoziwei/ROS/devel/lib/svo_ros/vo

.PHONY : rpg_svo/svo_ros/CMakeFiles/vo.dir/build

rpg_svo/svo_ros/CMakeFiles/vo.dir/requires: rpg_svo/svo_ros/CMakeFiles/vo.dir/src/vo_node.cpp.o.requires

.PHONY : rpg_svo/svo_ros/CMakeFiles/vo.dir/requires

rpg_svo/svo_ros/CMakeFiles/vo.dir/clean:
	cd /home/guoziwei/ROS/build/rpg_svo/svo_ros && $(CMAKE_COMMAND) -P CMakeFiles/vo.dir/cmake_clean.cmake
.PHONY : rpg_svo/svo_ros/CMakeFiles/vo.dir/clean

rpg_svo/svo_ros/CMakeFiles/vo.dir/depend:
	cd /home/guoziwei/ROS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/guoziwei/ROS/src /home/guoziwei/ROS/src/rpg_svo/svo_ros /home/guoziwei/ROS/build /home/guoziwei/ROS/build/rpg_svo/svo_ros /home/guoziwei/ROS/build/rpg_svo/svo_ros/CMakeFiles/vo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : rpg_svo/svo_ros/CMakeFiles/vo.dir/depend

