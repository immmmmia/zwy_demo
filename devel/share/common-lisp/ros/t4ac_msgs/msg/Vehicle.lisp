; Auto-generated. Do not edit!


(cl:in-package t4ac_msgs-msg)


;//! \htmlinclude Vehicle.msg.html

(cl:defclass <Vehicle> (roslisp-msg-protocol:ros-message)
  ((vehicle_id
    :reader vehicle_id
    :initarg :vehicle_id
    :type cl:integer
    :initform 0)
   (enter_time
    :reader enter_time
    :initarg :enter_time
    :type cl:integer
    :initform 0)
   (current_waypoint
    :reader current_waypoint
    :initarg :current_waypoint
    :type t4ac_msgs-msg:Location
    :initform (cl:make-instance 't4ac_msgs-msg:Location))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector t4ac_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 't4ac_msgs-msg:Waypoint :initial-element (cl:make-instance 't4ac_msgs-msg:Waypoint))))
)

(cl:defclass Vehicle (<Vehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t4ac_msgs-msg:<Vehicle> is deprecated: use t4ac_msgs-msg:Vehicle instead.")))

(cl:ensure-generic-function 'vehicle_id-val :lambda-list '(m))
(cl:defmethod vehicle_id-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:vehicle_id-val is deprecated.  Use t4ac_msgs-msg:vehicle_id instead.")
  (vehicle_id m))

(cl:ensure-generic-function 'enter_time-val :lambda-list '(m))
(cl:defmethod enter_time-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:enter_time-val is deprecated.  Use t4ac_msgs-msg:enter_time instead.")
  (enter_time m))

(cl:ensure-generic-function 'current_waypoint-val :lambda-list '(m))
(cl:defmethod current_waypoint-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:current_waypoint-val is deprecated.  Use t4ac_msgs-msg:current_waypoint instead.")
  (current_waypoint m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <Vehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:waypoints-val is deprecated.  Use t4ac_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle>) ostream)
  "Serializes a message object of type '<Vehicle>"
  (cl:let* ((signed (cl:slot-value msg 'vehicle_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'enter_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_waypoint) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle>) istream)
  "Deserializes a message object of type '<Vehicle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enter_time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_waypoint) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 't4ac_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle>)))
  "Returns string type for a message object of type '<Vehicle>"
  "t4ac_msgs/Vehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle)))
  "Returns string type for a message object of type 'Vehicle"
  "t4ac_msgs/Vehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle>)))
  "Returns md5sum for a message object of type '<Vehicle>"
  "5bb831235a6a75a24b4ee343d565fc99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle)))
  "Returns md5sum for a message object of type 'Vehicle"
  "5bb831235a6a75a24b4ee343d565fc99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle>)))
  "Returns full string definition for message of type '<Vehicle>"
  (cl:format cl:nil "# Vehicle~%# project name t4ac_global_planner_ros~%~%int32 vehicle_id~%int32 enter_time~%# Odometry start_point~%# PoseStamped end_point~%Location current_waypoint~%Waypoint[] waypoints~%~%================================================================================~%MSG: t4ac_msgs/Location~%# T4ac Project ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: t4ac_msgs/Waypoint~%# T4ac Project ~%~%Header header~%int32 id~%Transform transform~%int32 road_id~%int32 lane_id~%int32 junction~%float64 s~%float64 lane_width~%string lane_change~%string lane_type~%string right_lane_marking~%string left_lane_marking~%int32 vmax~%string vunit~%int32 nLanes~%int32 lanePosition~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: t4ac_msgs/Transform~%# T4ac Project~%~%Location location~%Rotation rotation~%================================================================================~%MSG: t4ac_msgs/Rotation~%# T4ac Project ~%~%float64 pitch~%float64 yaw~%float64 roll~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle)))
  "Returns full string definition for message of type 'Vehicle"
  (cl:format cl:nil "# Vehicle~%# project name t4ac_global_planner_ros~%~%int32 vehicle_id~%int32 enter_time~%# Odometry start_point~%# PoseStamped end_point~%Location current_waypoint~%Waypoint[] waypoints~%~%================================================================================~%MSG: t4ac_msgs/Location~%# T4ac Project ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: t4ac_msgs/Waypoint~%# T4ac Project ~%~%Header header~%int32 id~%Transform transform~%int32 road_id~%int32 lane_id~%int32 junction~%float64 s~%float64 lane_width~%string lane_change~%string lane_type~%string right_lane_marking~%string left_lane_marking~%int32 vmax~%string vunit~%int32 nLanes~%int32 lanePosition~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: t4ac_msgs/Transform~%# T4ac Project~%~%Location location~%Rotation rotation~%================================================================================~%MSG: t4ac_msgs/Rotation~%# T4ac Project ~%~%float64 pitch~%float64 yaw~%float64 roll~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_waypoint))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle
    (cl:cons ':vehicle_id (vehicle_id msg))
    (cl:cons ':enter_time (enter_time msg))
    (cl:cons ':current_waypoint (current_waypoint msg))
    (cl:cons ':waypoints (waypoints msg))
))
