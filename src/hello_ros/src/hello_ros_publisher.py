#!/usr/bin/env python  
# -*- coding: utf-8 -*  
import rospy
from std_msgs.msg import String  
def talker():
    pub = rospy.Publisher('hello_ros', String, queue_size=10)
    rospy.init_node('hello_ros_publisher', anonymous=True)
    r = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        str = "Hello ROS %s"%rospy.get_time()
        rospy.loginfo(str)
        pub.publish(str)
        r.sleep()
    
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass
