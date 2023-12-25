;; Auto-generated. Do not edit!


(when (boundp 't4ac_msgs::Vehicle)
  (if (not (find-package "T4AC_MSGS"))
    (make-package "T4AC_MSGS"))
  (shadow 'Vehicle (find-package "T4AC_MSGS")))
(unless (find-package "T4AC_MSGS::VEHICLE")
  (make-package "T4AC_MSGS::VEHICLE"))

(in-package "ROS")
;;//! \htmlinclude Vehicle.msg.html


(defclass t4ac_msgs::Vehicle
  :super ros::object
  :slots (_vehicle_id _enter_time _current_waypoint _waypoints ))

(defmethod t4ac_msgs::Vehicle
  (:init
   (&key
    ((:vehicle_id __vehicle_id) 0)
    ((:enter_time __enter_time) 0)
    ((:current_waypoint __current_waypoint) (instance t4ac_msgs::Location :init))
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _vehicle_id (round __vehicle_id))
   (setq _enter_time (round __enter_time))
   (setq _current_waypoint __current_waypoint)
   (setq _waypoints __waypoints)
   self)
  (:vehicle_id
   (&optional __vehicle_id)
   (if __vehicle_id (setq _vehicle_id __vehicle_id)) _vehicle_id)
  (:enter_time
   (&optional __enter_time)
   (if __enter_time (setq _enter_time __enter_time)) _enter_time)
  (:current_waypoint
   (&rest __current_waypoint)
   (if (keywordp (car __current_waypoint))
       (send* _current_waypoint __current_waypoint)
     (progn
       (if __current_waypoint (setq _current_waypoint (car __current_waypoint)))
       _current_waypoint)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; int32 _vehicle_id
    4
    ;; int32 _enter_time
    4
    ;; t4ac_msgs/Location _current_waypoint
    (send _current_waypoint :serialization-length)
    ;; t4ac_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _vehicle_id
       (write-long _vehicle_id s)
     ;; int32 _enter_time
       (write-long _enter_time s)
     ;; t4ac_msgs/Location _current_waypoint
       (send _current_waypoint :serialize s)
     ;; t4ac_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _vehicle_id
     (setq _vehicle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _enter_time
     (setq _enter_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; t4ac_msgs/Location _current_waypoint
     (send _current_waypoint :deserialize buf ptr-) (incf ptr- (send _current_waypoint :serialization-length))
   ;; t4ac_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance t4ac_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get t4ac_msgs::Vehicle :md5sum-) "5bb831235a6a75a24b4ee343d565fc99")
(setf (get t4ac_msgs::Vehicle :datatype-) "t4ac_msgs/Vehicle")
(setf (get t4ac_msgs::Vehicle :definition-)
      "# Vehicle
# project name t4ac_global_planner_ros

int32 vehicle_id
int32 enter_time
# Odometry start_point
# PoseStamped end_point
Location current_waypoint
Waypoint[] waypoints

================================================================================
MSG: t4ac_msgs/Location
# T4ac Project 

float64 x
float64 y
float64 z
================================================================================
MSG: t4ac_msgs/Waypoint
# T4ac Project 

Header header
int32 id
Transform transform
int32 road_id
int32 lane_id
int32 junction
float64 s
float64 lane_width
string lane_change
string lane_type
string right_lane_marking
string left_lane_marking
int32 vmax
string vunit
int32 nLanes
int32 lanePosition

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: t4ac_msgs/Transform
# T4ac Project

Location location
Rotation rotation
================================================================================
MSG: t4ac_msgs/Rotation
# T4ac Project 

float64 pitch
float64 yaw
float64 roll
")



(provide :t4ac_msgs/Vehicle "5bb831235a6a75a24b4ee343d565fc99")


