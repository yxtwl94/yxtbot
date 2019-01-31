#!/usr/bin/env python
'''pytalker ROS Node'''
# license removed for brevity
import rospy
from topic_demo.msg import sensor
import math


def pytalker():
    '''pytalker Publisher'''
    pub = rospy.Publisher('R_info', sensor, queue_size=1)
    rospy.init_node('pytalker', anonymous=True)
    #init
    t=0.0
    v=math.sin(t)
    a=0
    state='working'

    L=range(0,0)
    rate = rospy.Rate(1) # 1hz

    while not rospy.is_shutdown():
        rospy.loginfo("time ist %f, the velocity is %f " ,t,v)
        t+=0.1
        v=math.sin(t)
        if len(L)==0:
                L.append(v)
                a=0
        elif len(L)==1:
                L.append(v)
                a=L[1]-L[0]
        else:
                L.append(v)
                del L[0]
                a=L[1]-L[0]

        pub.publish(sensor(v,a,state))
        #there must have 3 output
        rate.sleep()

if __name__ == '__main__':
    pytalker()