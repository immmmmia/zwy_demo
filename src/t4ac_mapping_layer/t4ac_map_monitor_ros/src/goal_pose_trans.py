#!/usr/bin/env python3
"""
将rviz发布的/initialpose数据类型转为monitor可接收的类型
"""
import rospy
from geometry_msgs.msg import PoseStamped

def posePub(pose_sub):
    
    t4ac_pose_pub = rospy.Publisher('/t4ac/planning/goal', PoseStamped, queue_size=1)
    
    pose_msg=pose_sub
    
    t4ac_pose_pub.publish(pose_msg)
    print("Already published the goal.")
    
def poseTrans():

    rospy.init_node("goal_pose_trans_node", anonymous=True)
    pose_sub = rospy.Subscriber("/move_base_simple/goal", PoseStamped, posePub)
    rospy.spin()


if __name__ == '__main__':
    try:
    	poseTrans()
    except rospy.ROSInterruptException:
        pass

