#!/usr/bin/env python  
# -*- coding: utf-8 -*  
import rospy
from std_msgs.msg import String 
def callback_s(data):
    rospy.loginfo(rospy.get_caller_id()+"I heard %s", data.data)
def listener():
    rospy.init_node('hello ros subscriber',anonymous=True)
    rospy.Subscriber("hello_ros", String, callback_s)
    rospy.spin()

if __name__ == '__main__':
    listener()
