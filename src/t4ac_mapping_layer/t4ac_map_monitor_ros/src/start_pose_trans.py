#!/usr/bin/env python3
"""
将rviz发布的/initialpose数据类型转为monitor可接收的类型
"""
import rospy
from geometry_msgs.msg import PoseWithCovarianceStamped
from nav_msgs.msg import Odometry

def posePub(pose_sub):
    
    t4ac_pose_pub = rospy.Publisher('/t4ac/localization/pose', Odometry, queue_size=1)
    
    pose_msg=Odometry()
    
    pose_msg.header = pose_sub.header
    pose_msg.pose.pose.position = pose_sub.pose.pose.position
    pose_msg.pose.pose.orientation = pose_sub.pose.pose.orientation
    pose_msg.pose.covariance = pose_sub.pose.covariance
    
    t4ac_pose_pub.publish(pose_msg)
    print("Already published the initial pose.")
    
def poseTrans():

    rospy.init_node("start_pose_trans_node", anonymous=True)
    pose_sub = rospy.Subscriber("/initialpose", PoseWithCovarianceStamped, posePub)
    rospy.spin()


if __name__ == '__main__':
    try:
    	poseTrans()
    except rospy.ROSInterruptException:
        pass

