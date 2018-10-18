#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/guoziwei/ROS/src/rpg_vikit/vikit_py"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/guoziwei/ROS/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/guoziwei/ROS/install/lib/python2.7/dist-packages:/home/guoziwei/ROS/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/guoziwei/ROS/build" \
    "/usr/bin/python" \
    "/home/guoziwei/ROS/src/rpg_vikit/vikit_py/setup.py" \
    build --build-base "/home/guoziwei/ROS/build/rpg_vikit/vikit_py" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/guoziwei/ROS/install" --install-scripts="/home/guoziwei/ROS/install/bin"
