#!/usr/bin/env python3
"""
将rviz发布的/initialpose数据类型转为monitor可接收的类型
"""
import rospy
import random
import pandas as pd

from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
from std_msgs.msg import Float32,Int32

class VehicleInit():

    def __init__(self):
        
        self.vehicle_id = 0
        self.vehicle_speed = 0
        self.global_time = None
        self.enter_time = None
        self.pub_rate = rospy.Rate(1/5)	# rate of publishing the initial pose & goals

        self.global_time_sub = rospy.Subscriber('/vehicle/time/global', Float32, self.time_callback)

        self.initial_pose_pub = rospy.Publisher('/t4ac/localization/pose', Odometry, queue_size=1)
        self.goal_pub = rospy.Publisher('/t4ac/planning/goal', PoseStamped, queue_size=1)
        self.enter_time_pub = rospy.Publisher('/vehicle/time/enter', Float32, queue_size=1)
        self.speed_pub = rospy.Publisher('/vehicle/speed', Int32, queue_size=1)
        self.num_pub = rospy.Publisher('/vehicle/num', Int32, queue_size=1)

    def time_callback(self,time):
        self.global_time = time.data
    
    def vehicle_init(self):
        while not rospy.is_shutdown():

            initial_pose_msg = Odometry()
            goal_msg = PoseStamped()

            self.enter_time = self.global_time
            self.vehicle_speed = random.randint(1,10)    # m/s

            initial_pose_msg.header.seq = self.vehicle_id
            initial_pose_msg.header.stamp = rospy.Time.now()
            initial_pose_msg.header.frame_id = "map"
            initial_pose_msg.child_frame_id = ''
            initial_pose_msg.pose.pose.position.x = random.uniform(-5,410)    #-5~410
            initial_pose_msg.pose.pose.position.y = random.uniform(-335,5)   #-335~5
            initial_pose_msg.pose.pose.position.z = 0.0
            goal_msg.header.seq = self.vehicle_id
            goal_msg.header.stamp = rospy.Time.now()
            goal_msg.header.frame_id = "map"
            goal_msg.pose.position.x = random.uniform(-5,410)
            goal_msg.pose.position.y = random.uniform(-335,5)
            goal_msg.pose.position.z = 0.0
        
            self.enter_time_pub.publish(self.enter_time)
            self.speed_pub.publish(self.vehicle_speed)
            self.num_pub.publish(self.vehicle_id)
            self.initial_pose_pub.publish(initial_pose_msg)
            self.goal_pub.publish(goal_msg)

            if self.vehicle_id > 0:
                print("Already init the vehicle: No.",self.vehicle_id)
            self.vehicle_id += 1
            self.pub_rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node("vehicle_init_node", anonymous=True)
        print("Start Vehicle Initialization node.")
        VehicleInit().vehicle_init()
    except rospy.ROSInterruptException:
        pass