#!/usr/bin/env python
'''pytalker ROS Node'''
# license removed for brevity
import rospy
from topic_demo.msg import gps
import math

def pytalker():
    '''pytalker Publisher'''
    pub = rospy.Publisher('R_info', gps, queue_size=10)
    rospy.init_node('pytalker', anonymous=True)
    x=0.0
    y=math.sin(x)
    state='working'
    rate = rospy.Rate(1) # 10hz

    while not rospy.is_shutdown():
        
        rospy.loginfo("radius ist %f, the value is %f" ,x,y)
        x+=0.1
        y=math.sin(x)
        pub.publish(gps(state,x,y))
        rate.sleep()

if __name__ == '__main__':
        pytalker()
    