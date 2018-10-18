#include<ros/ros.h>
#include<tf/transform_broadcaster.h>

int main(int argc, char** argv)
{
    /* code for main function */
    ros::init(argc, argv, "robot_tf_publisher");
    ros::NodeHandle n;
    ros::Rate r(10);
    tf::TransformBroadcaster broadcaster;

    while (n.ok())
    {
        /* code for loop body */
        broadcaster.sendTransform(tf::StampedTransform(tf::Transform(tf::Quaternion(0,0,0,1),
        tf::Vector3(0.1,0.1,0.2)),ros::Time::now(),"base_link","base_laser"));
        r.sleep();
    }
    
    return 0;
}