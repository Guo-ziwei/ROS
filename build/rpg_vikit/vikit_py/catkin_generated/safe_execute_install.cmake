execute_process(COMMAND "/home/guoziwei/ROS/build/rpg_vikit/vikit_py/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/guoziwei/ROS/build/rpg_vikit/vikit_py/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
