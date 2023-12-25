#!/usr/bin/env python3

import rospy
import random
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
from std_msgs.msg import Float32

class Timer():

    def __init__(self):
        self.seq = 0
        self.global_init_time = None
        self.global_time = None
        self.delta_time = 0.1
        self.pub_rate = rospy.Rate(1/self.delta_time)	# rate of publishing

        self.global_time_pub = rospy.Publisher('/vehicle/time/global', Float32, queue_size=1)


    def timer(self):
        temp_stamp = rospy.Time.now()
        self.global_init_time = temp_stamp.to_sec()

        while not rospy.is_shutdown():
            temp = rospy.Time.now()
            self.global_time = temp.to_sec() - self.global_init_time
            self.global_time_pub.publish(self.global_time)
            self.pub_rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node("timer_node", anonymous=True)
        print("Start Timer node.")
        Timer().timer()
    except rospy.ROSInterruptException:
        pass

