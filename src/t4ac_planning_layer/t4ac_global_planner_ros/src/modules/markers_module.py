"""
Module that implement functions to generate util marker objects to represent
different elements of the map in RVIZ, adapted for planning layer
"""
import rospy
import random
import pandas as pd
import math

import visualization_msgs.msg
import geometry_msgs.msg


def get_waypoint(waypoint, rgb = [0,0,0], lifetime = 0.2, scale = 0.2):
    """
    Get way marker to represent a T4ac_Waypoint in RVIZ

    Args:
        waypoint: T4ac_Waypoint()
        rgb: Colour
        lifetime: Lifetime of the marker in seconds
        scale: Scale for the marker

    Returns:
        waypoint_marker: Marker to represent a waypoint in RVIZ
    """
    waypoint_marker = visualization_msgs.msg.Marker()
    waypoint_marker.header.frame_id = "map"
    waypoint_marker.header.stamp = rospy.Time.now()
    waypoint_marker.ns = "waypoint_marker"
    waypoint_marker.action = visualization_msgs.msg.Marker.ADD
    waypoint_marker.pose.orientation.w = 1.0
    waypoint_marker.id = 0
    waypoint_marker.type = visualization_msgs.msg.Marker.POINTS
    waypoint_marker.color.r = rgb[0]
    waypoint_marker.color.g = rgb[1]
    waypoint_marker.color.b = rgb[2]
    waypoint_marker.color.a = 1.0
    waypoint_marker.scale.x = scale
    waypoint_marker.scale.y = scale
    waypoint_marker.lifetime = rospy.Duration(lifetime)

    point = geometry_msgs.msg.Point()
    point.x = waypoint.transform.location.x
    point.y = waypoint.transform.location.y
    point.z = waypoint.transform.location.z
    waypoint_marker.points.append(point)

    return waypoint_marker

def get_waypoints(waypoint_list, id, lifetime = 0.2, scale = 0.2):
    """
    Get waypoints marker to represent a list of T4ac_Waypoint in RVIZ

    Args:
        waypoint_list: List of T4ac_Waypoint()
        rgb: Colour
        lifetime: Lifetime of the marker in seconds
        scale: Scale for the marker

    Returns:
        waypoints_marker: Marker to represent a waypoint list in RVIZ
    """
    waypoints_marker = visualization_msgs.msg.Marker()
    waypoints_marker.header.frame_id = "map"
    waypoints_marker.header.stamp = rospy.Time.now()
    waypoints_marker.ns = "waypoints_marker"
    waypoints_marker.action = visualization_msgs.msg.Marker.ADD
    waypoints_marker.pose.orientation.w = 1.0
    waypoints_marker.id = id
    waypoints_marker.type = visualization_msgs.msg.Marker.LINE_STRIP
    waypoints_marker.color.r = random.randint(0,255)
    waypoints_marker.color.g = random.randint(0,255)
    waypoints_marker.color.b = random.randint(0,255)
    waypoints_marker.color.a = 0.6
    waypoints_marker.scale.x = scale
    waypoints_marker.scale.y = scale
    waypoints_marker.scale.z = scale
    waypoints_marker.lifetime = rospy.Duration(lifetime)

    for waypoint in waypoint_list:
        point = geometry_msgs.msg.Point()
        point.x = waypoint.transform.location.x
        point.y = waypoint.transform.location.y
        point.z = waypoint.transform.location.z
        waypoints_marker.points.append(point)
    return waypoints_marker

def get_point(x, y, z, rgb = [0,0,0], lifetime = 0.2, scale = 0.2):
    """
    Get way marker to represent a xyz point in RVIZ

    Args:
        x, y, z: (flt, flt, flt)
        rgb: Colour
        lifetime: Lifetime of the marker in seconds
        scale: Scale for the marker

    Returns:
        point_marker: Marker to represent a xyz point in RVIZ
    """
    point_marker = visualization_msgs.msg.Marker()
    point_marker.header.frame_id = "map"
    point_marker.header.stamp = rospy.Time.now()
    point_marker.ns = "point_marker"
    point_marker.action = visualization_msgs.msg.Marker.ADD
    point_marker.pose.orientation.w = 1.0
    point_marker.id = 0
    point_marker.type = visualization_msgs.msg.Marker.POINTS
    point_marker.color.r = rgb[0]
    point_marker.color.g = rgb[1]
    point_marker.color.b = rgb[2]
    point_marker.color.a = 1.0
    point_marker.scale.x = scale
    point_marker.scale.y = scale
    point_marker.lifetime = rospy.Duration(lifetime)

    point = geometry_msgs.msg.Point()
    point.x = x
    point.y = y
    point.z = z
    point_marker.points.append(point)

    return point_marker




def get_waypoints_point(x, y, t, current_time, vehicle_id, rgb = [0,0,0],lifetime = 0.2, scale = [1,1,1]):
    """
    Get waypoints marker to represent a list of T4ac_Waypoint in RVIZ

    Args:
        waypoint_list: List of T4ac_Waypoint()
        rgb: Colour
        lifetime: Lifetime of the marker in seconds
        scale: Scale for the marker

    Returns:
        waypoints_marker: Marker to represent a waypoint list in RVIZ
    """
    point_marker = visualization_msgs.msg.Marker()
    point_marker.header.frame_id = "map"
    point_marker.header.stamp = rospy.Time.now()
    point_marker.ns = "point_marker"
    point_marker.action = visualization_msgs.msg.Marker.ADD
    
    point_marker.id = vehicle_id
    point_marker.type = visualization_msgs.msg.Marker.CUBE
    point_marker.color.r = rgb[0]
    point_marker.color.g = rgb[1]
    point_marker.color.b = rgb[2]
    point_marker.color.a = 0.6
    point_marker.scale.x = scale[0]
    point_marker.scale.y = scale[1]
    point_marker.scale.z = scale[2]
    

    if not current_time > t[len(t)-1]:
        point_marker.lifetime = rospy.Duration(lifetime)
        temp = [idx for idx,time in enumerate(t) if time > current_time]
        index = temp[0]     #满足判断的time的idx
        current_x = x[index-1]
        current_y = y[index-1]
        current_t = t[index-1]
        next_x = x[index]
        next_y = y[index]
        next_t= t[index]
        delta = (current_time - current_t)/(next_t-current_t)
        point_marker.pose.position.x = current_x + delta * (next_x-current_x)
        point_marker.pose.position.y = current_y + delta * (next_y-current_y) 
        point_marker.pose.position.z = current_t + delta * (next_t-current_t)
        point_marker.pose.orientation.w = 1.0
        if abs(next_x - current_x) < 1e-2:
            point_marker.pose.orientation.z= 0
        elif abs(next_y - current_y) < 1e-2:
            point_marker.pose.orientation.z = 1
        else:
            x1 = x[index]-x[index-1]
            x2 = x[index+1]-x[index]
            y1 = y[index]-y[index-1]
            y2 = y[index+1]-y[index]
            dist1 = (x1*x1 + y1*y1)*0.5
            dist2 = (x2*x2 + y2*y2)*0.5
            x1 /= dist1
            y1 /= dist1
            x2 /= dist2
            y2 /= dist2
            cos = x1 * x2 + y1 * y2
            theta = math.acos(cos)
            sin = math.sin(theta)
            r1 = cos 
            r2 = -sin
            point_marker.pose.orientation.z = math.atan2(-r2,r1)
        state = 'running'
        print("----------------------")
    else:
        file_name = "~/catkin_ws/src/t4ac_planning_layer/t4ac_global_planner_ros/src/csv/vehicle_" + str(vehicle_id).zfill(3)
        df = pd.read_csv(file_name, header=None, names = ['id','speed','state','start','goal'])
        df['state'].replace("running","stop",inplace = True)
        df.to_csv(file_name, index=False, sep=',')
        state = 'stop'

    return point_marker,state