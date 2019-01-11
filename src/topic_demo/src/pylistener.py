#!/usr/bin/env python
'''pytalker ROS Node'''
import rospy
from topic_demo.msg import gps
import math


def callback(gps):
    '''pytalker Callback Function'''
    if gps.y>0:
        rospy.loginfo('Larger than 0,the value is %f,state=%s', gps.y,gps.state)
    else:
        rospy.loginfo('Smaller than 0,the value is %f,state=%s', gps.y,gps.state)


def pylistener():
    '''Subscriber'''
    # In ROS, nodes are uniquely named. If two nodes with the same
    # node are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('pylistener', anonymous=True)

    rospy.Subscriber("R_info", gps, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    pylistener()
