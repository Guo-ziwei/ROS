#include<string>
#include<ros/ros.h>
#include<sensor_msgs/JointState.h>
#include<tf/transform_broadcaster.h>
#include<nav_msgs/Odometry.h>
#include<geometry_msgs/Quaternion.h>
#include<iostream>
#include<geometry_msgs/Twist.h>

class subscribepublish
{
public:
    subscribepublish()
    {
        x = 0.0;
        th = 0.0;
        vx = 0.0;
        vy = 0.0;
        w = 0.0;
        pub = nh.advertise<nav_msgs::Odometry>("odom", 10);
        sub = nh.subscribe("cmd_vel", 100, &subscribepublish::cmd_callback,this);
        current_time = ros::Time::now();
        last_time = ros::Time::now();

    }
    //virtual ~subscribepublish();

    void cmd_callback(const geometry_msgs::Twist& twist_aux)
    {
        current_time = ros::Time::now();
        ROS_INFO("i heard from cmd_vel");
        double v = twist_aux.linear.x;
        w = twist_aux.angular.z;
        vx = v*cos(th);
        vy = v*sin(th); 
        double dt = 0.02;
        double delta_x = (vx*cos(w) - vy*sin(w))*dt;
        double delta_y = (vx*sin(w) + vy*cos(w))*dt;
        double delta_th = w*dt;
        x += delta_x;
        y += delta_y;
        th += delta_th;
        //ros::Rate loop_rate(1);

        geometry_msgs::TransformStamped odom_trans;
        odom_trans.header.frame_id = "odom";
        odom_trans.child_frame_id = "base_link";
        odom_trans.header.stamp = current_time;
        odom_trans.transform.translation.x = x;
        odom_trans.transform.translation.y = y;
        odom_trans.transform.translation.z = 0.0;
        odom_trans.transform.rotation = tf::createQuaternionMsgFromYaw(th);

        
        

        geometry_msgs::Quaternion odom_quat;
        odom_quat = tf::createQuaternionMsgFromRollPitchYaw(0,0,th);

        nav_msgs::Odometry odom;
        odom.header.stamp = current_time;
        odom.header.frame_id = "odom";
        odom.child_frame_id = "base_link";

        odom.pose.pose.position.x = x;
        odom.pose.pose.position.y = y;
        odom.pose.pose.position.z = 0.0;
        odom.pose.pose.orientation = odom_quat;

        odom.twist.twist.linear.x = vx;
        odom.twist.twist.linear.y = vy;
        odom.twist.twist.linear.z = 0.0;
        odom.twist.twist.angular.x = 0.0;
        odom.twist.twist.angular.y = 0.0;
        odom.twist.twist.angular.z = w;
        
        last_time = current_time;
        broadcaster.sendTransform(odom_trans);
        pub.publish(odom);
        ROS_INFO("x: %f",odom.pose.pose.position.x);
        ROS_INFO("y: %f",odom.pose.pose.position.y);
        ROS_INFO("z: %f",odom.pose.pose.position.z);
       // ROS_INFO("th: %f",odom.pose.pose.orientation);
       
            //ROS_INFO("orientation: %f",odom.pose.pose.orientation);
            //loop_rate.sleep();
    }

private:
    ros::NodeHandle nh;
    ros::Publisher pub;
    ros::Subscriber sub;
    ros::Time current_time;
    ros::Time last_time;
    tf::TransformBroadcaster broadcaster;
    double x;
    double y;
    double th;
    double vx;
    double vy;
    double w;
};



int main(int argc, char *argv[])
{
    ros::init(argc, argv, "state_publisher");
    subscribepublish myodom;
    
    ros::spin();
    return 0;
}