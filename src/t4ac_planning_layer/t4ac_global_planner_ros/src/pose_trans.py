#!/usr/bin/env python3
"""
将rviz发布的/initialpose数据类型转为monitor可接收的类型
"""
import rospy
import random
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry

def poseTrans():
    rospy.Subscriber("/vehicle/enter/pose", Odometry, odometry_callback)
    rospy.Subscriber("/vehicle/goal/pose", PoseStamped, goal_callback)
    rospy.spin()

def odometry_callback(odometry_data):
    start_pub = rospy.Publisher('/t4ac/localization/pose', Odometry, queue_size=1)
    start_msg = Odometry()
    start_msg = odometry_data
    start_pub(start_msg)

def goal_callback(goal):
    goal_pub = rospy.Publisher('/t4ac/planning/goal', PoseStamped, queue_size=1)
    goal_msg = PoseStamped()
    goal_msg = goal
    goal_pub(goal_msg)



if __name__ == '__main__':
    try:
        rospy.init_node("pose_trans_node", anonymous=True)
        print("*****Start Pose Transition node.*****")
        poseTrans()
    except rospy.ROSInterruptException:
        pass

