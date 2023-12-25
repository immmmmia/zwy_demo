#!/usr/bin/env python3
"""
将rviz发布的/initialpose数据类型转为monitor可接收的类型
"""
import rospy
import random
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry

def posePub():
    initial_pose_pub = rospy.Publisher('/t4ac/localization/pose', Odometry, queue_size=1)
    goal_pub = rospy.Publisher('/t4ac/planning/goal', PoseStamped, queue_size=1)
    
    seq = 0
    pub_rate = rospy.Rate(0.2)	# rate of publishing the initial pose & goal
    
    while not rospy.is_shutdown():
    
        initial_pose_msg=Odometry()
        goal_msg=PoseStamped()
        
        initial_pose_msg.header.seq = seq
        initial_pose_msg.header.stamp = rospy.Time.now()
        initial_pose_msg.header.frame_id = "map"
        initial_pose_msg.child_frame_id = ''
        initial_pose_msg.pose.pose.position.x = random.uniform(-5,410)    #-5~410
        initial_pose_msg.pose.pose.position.y = random.uniform(-335,5)   #-335~5
        initial_pose_msg.pose.pose.position.z = 0.0
        goal_msg.header.seq = seq
        goal_msg.header.stamp = rospy.Time.now()
        goal_msg.header.frame_id = "map"
        goal_msg.pose.position.x = random.uniform(-5,410)
        goal_msg.pose.position.y = random.uniform(-335,5)
        goal_msg.pose.position.z = 0.0
        
        initial_pose_pub.publish(initial_pose_msg)
        goal_pub.publish(goal_msg)
        if seq > 0:
            print("Already published the pose: No.",seq)
        seq = seq + 1
        pub_rate.sleep()


if __name__ == '__main__':
    try:
    	rospy.init_node("pose_pub_node", anonymous=True)
    	print("Start Pose Publish node.")
    	posePub()
    except rospy.ROSInterruptException:
        pass

