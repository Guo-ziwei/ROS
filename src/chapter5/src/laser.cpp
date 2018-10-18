#include<ros/ros.h>
#include<sensor_msgs/LaserScan.h>
int main(int argc, char *argv[])
{
    /* code for main function */
    ros::init(argc, argv, "laser_scan_publisher");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<sensor_msgs::LaserScan>("laser_scan", 50);
    unsigned int num_reading = 100;
    double laser_frequency = 40;
    double ranges[num_reading];
    double intensities[num_reading];
    int count = 0;
    ros::Rate r(1);
    while (nh.ok())
    {
        /* code for loop body */
        for(unsigned int i = 0;i<num_reading;++i)
        {
            ranges[i] = count;
            intensities[i] = 100 + count;
        }
        ros::Time scan_time = ros::Time::now();
        sensor_msgs::LaserScan scan;
        scan.header.stamp = scan_time;
        scan.header.frame_id = "base_link";
        scan.angle_min = -1.57;
        scan.angle_max = 1.57;
        scan.angle_increment = 3.14/num_reading;
        scan.time_increment = (1/laser_frequency)/(num_reading);
        scan.range_max = 50.0;
        scan.range_min = 0.0;
        scan.ranges.resize(num_reading);
        scan.intensities.resize(num_reading);
        for(unsigned int i = 0; i < num_reading; ++i)
        {
            scan.ranges[i] = ranges[i];
            scan.intensities[i] = intensities[i];
        }
        pub.publish(scan);
        ++count;
        r.sleep();
    }
    
    return 0;
}