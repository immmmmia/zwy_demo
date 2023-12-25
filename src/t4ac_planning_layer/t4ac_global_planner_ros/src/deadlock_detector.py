#!/usr/bin/env python3
"""
Visualize the route, init and goal point in RVIZ using markers
"""
import rospy
import pandas as pd

from std_msgs.msg import Float32
from t4ac_msgs.msg import Path

from modules.markers_module import get_point, get_waypoints, get_waypoints_point


class DeadlockDetector():
    """
    Class for visualizing the planner elements (route, init and goal) as
    ROS markers in RVIZ
    """

    def __init__(self):
    
        self.vehicles = []
        self.deadlocks = []
        self.vehicle_num = -1
        self.deadlock_num = 0

        self.route_sub = rospy.Subscriber("/t4ac/planning/route", Path, self.route_callback)
        self.time_sub = rospy.Subscriber("/vehicle/time/global", Float32, self.time_callback)

    def time_callback(self, time):
        self.global_time = time.data
        #if self.vehicle_num > 0:
            #self.point_detector()

    def point_detector(self):
        curr_id = self.new_vehicle['id']
        curr_x = self.new_vehicle['x']
        curr_y = self.new_vehicle['y']
        curr_z = self.new_vehicle['z']
        for vehicle in self.vehicles:
            temp_id = vehicle['id']
            if not curr_id == temp_id:
                temp_x = vehicle['x']
                temp_y = vehicle['y']
                temp_z = vehicle['z']
                for idx_1,z_1 in enumerate(curr_z):
                    for idx_2,z_2 in enumerate(temp_z):
                        if abs(z_2 - z_1) < 1e-2:
                            x_1 = curr_x[idx_1]
                            x_2 = temp_x[idx_2]
                            y_1 = curr_y[idx_1]
                            y_2 = temp_y[idx_2]
                            if abs(x_2 - x_1) < 2 or abs(y_2 -y_1) < 5:
                                print('id|',curr_id,temp_id)
                                print('idx|',idx_1,idx_2)
                                print('x|',round(x_1,2),round(x_2,2))
                                print('y|',round(y_1,2),round(y_2,2))
                                print('z|',round(z_1,2),round(z_2,2))
                                print("--------")

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
        self.new_vehicle = {'id': route.header.seq, 'state':'running', 'x': point_x, 'y': point_y, 'z': point_z}
        self.vehicles.append(self.new_vehicle)
        self.point_detector()
         
    
    
if __name__ == '__main__':
    try:
        rospy.init_node("route_visualizator_node", anonymous=True)
        deadlock_detector = DeadlockDetector()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
