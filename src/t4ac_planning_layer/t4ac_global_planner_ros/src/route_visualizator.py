#!/usr/bin/env python3
"""
Visualize the route, init and goal point in RVIZ using markers
"""
import rospy
import pandas as pd
import random

from visualization_msgs.msg import Marker
from nav_msgs.msg import Odometry
from std_msgs.msg import Float32, Int32
from geometry_msgs.msg import PoseStamped
from t4ac_msgs.msg import Path

from modules.markers_module import get_point, get_waypoints, get_waypoints_point


class RouteVisualizator():
    """
    Class for visualizing the planner elements (route, init and goal) as
    ROS markers in RVIZ
    """

    def __init__(self):
    
        self.start_time = 0
        self.marker_id = 0
        self.global_time = 0
        self.vehicle_num = -1
        self.vehicles = []
        self.deadlock_num = 0
        self.deadlocks = []
        self.normal_rgb = [194, 219, 239]
        self.deadlock_rgb = [210, 0, 0]
        self.del_x = 5
        self.del_y = 5

        self.odometry_sub = rospy.Subscriber("/t4ac/localization/pose", Odometry, self.odometry_callback)
        self.goal_sub = rospy.Subscriber("/t4ac/planning/goal", PoseStamped, self.goal_callback)
        self.route_sub = rospy.Subscriber("/t4ac/planning/route", Path, self.route_callback)
        self.time_sub = rospy.Subscriber("/vehicle/time/global", Float32, self.time_callback)
        self.num_sub = rospy.Subscriber("/vehicle/num", Int32, self.num_callback)

        self.odometry_pub = rospy.Publisher(
            "/t4ac/planning/visualization/odometry", Marker, queue_size=1)
        self.goal_pub = rospy.Publisher(
            "/t4ac/planning/visualization/goal", Marker, queue_size=1)
        self.route_pub = rospy.Publisher(
            "/t4ac/planning/visualization/route", Marker, queue_size=1)
        self.point_pub = rospy.Publisher(
            "/t4ac/planning/visualization/point", Marker, queue_size=1)

    def time_callback(self, time):
        self.global_time = time.data
        if self.vehicle_num > 0:
            self.point_update()
            

    def num_callback(self, num):
        self.vehicle_num = num.data
        
    
    def odometry_callback(self, odometry):
        """
        Get the odometry of the ego-vehicle and publish it as a ROS marker
        """
        
        odometry_marker = get_point(odometry.pose.pose.position.x, 
                                    odometry.pose.pose.position.y, 
                                    odometry.pose.pose.position.z, 
                                    [1, 0, 1], 0.5, 1)
        self.odometry_pub.publish(odometry_marker)

    def goal_callback(self, goal):
        """
        Get the goal of the route and publish it as a ROS marker
        """
        goal_marker = get_point(goal.pose.position.x,
                                goal.pose.position.y,
                                goal.pose.position.z,
                                [1, 0, 0], -1, 1)
        self.goal_pub.publish(goal_marker)

    def point_update(self):
        id_1 = -1
        id_2 = -1
        for deadlock in self.deadlocks:
            time = deadlock['time']
            if abs(self.global_time-time) < 1e-2:
                id_list = deadlock['id']
                id_1 = id_list[0]
                id_2 = id_list[1]
                print(self.global_time,time,id_1,id_2)
                
        for vehicle in self.vehicles:
            id = vehicle['id']
            if id == id_1 or id == id_2:
                rgb = self.deadlock_rgb
            else:
                rgb = self.normal_rgb
            state = vehicle['state']
            point_x = vehicle['x']
            point_y = vehicle['y']
            point_z = vehicle['z']
            if not state == "stop":
                print("更新vehicle",str(id).zfill(3),"的位置")
                point_marker,state_change = get_waypoints_point(point_x,point_y,point_z, self.global_time, id,rgb, 1, [2,5,2])
                self.point_pub.publish(point_marker)
                if state_change == "stop":
                    vehicle['state'] = state_change

    def deadlock_detector(self, new_vehicle):
        curr_id = new_vehicle['id']
        curr_x = new_vehicle['x']
        curr_y = new_vehicle['y']
        curr_z = new_vehicle['z']
        for vehicle in self.vehicles:
            temp_id = vehicle['id']
            if not curr_id == temp_id:
                temp_x = vehicle['x']
                temp_y = vehicle['y']
                temp_z = vehicle['z']
                for idx_1,z_1 in enumerate(curr_z):
                    for idx_2,z_2 in enumerate(temp_z):
                        if abs(z_2 - z_1) < 1:
                            x_1 = curr_x[idx_1]
                            x_2 = temp_x[idx_2]
                            y_1 = curr_y[idx_1]
                            y_2 = temp_y[idx_2]
                            if abs(x_2 - x_1) < self.del_x and abs(y_2 -y_1) < self.del_y:
                                new_deadlock = {'id':[curr_id,temp_id],'x':[round(x_1,2),round(x_2,2)],'y':[round(y_1,2),round(y_2,2)],'time':round(z_1,2)}
                                self.deadlocks.append(new_deadlock)
                                self.deadlock_num += 1
    
    def route_callback(self, route):
        """
        Get the route calculated and publish it as a ROS marker
        """
        point_x = []
        point_y = []
        point_z = []
        for point in route.waypoints:
            point_x.append(point.transform.location.x)
            point_y.append(point.transform.location.y)
            point_z.append(point.transform.location.z)
        new_vehicle = {'id': route.header.seq, 'state':'running', 'x': point_x, 'y': point_y, 'z': point_z}
        self.vehicles.append(new_vehicle)
        self.deadlock_detector(new_vehicle)
        route_marker = get_waypoints(route.waypoints, route.header.seq, -1, 1)
        self.route_pub.publish(route_marker)
         
    
    
if __name__ == '__main__':
    try:
        rospy.init_node("route_visualizator_node", anonymous=True)
        route_visualizator = RouteVisualizator()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
