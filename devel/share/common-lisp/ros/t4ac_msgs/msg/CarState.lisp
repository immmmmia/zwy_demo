; Auto-generated. Do not edit!


(cl:in-package t4ac_msgs-msg)


;//! \htmlinclude CarState.msg.html

(cl:defclass <CarState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (manual_mode
    :reader manual_mode
    :initarg :manual_mode
    :type cl:boolean
    :initform cl:nil)
   (ready_mode
    :reader ready_mode
    :initarg :ready_mode
    :type cl:boolean
    :initform cl:nil)
   (automatic_mode
    :reader automatic_mode
    :initarg :automatic_mode
    :type cl:boolean
    :initform cl:nil)
   (actuated_brake
    :reader actuated_brake
    :initarg :actuated_brake
    :type cl:boolean
    :initform cl:nil)
   (actuated_wheel
    :reader actuated_wheel
    :initarg :actuated_wheel
    :type cl:boolean
    :initform cl:nil)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil)
   (forward
    :reader forward
    :initarg :forward
    :type cl:boolean
    :initform cl:nil)
   (parked
    :reader parked
    :initarg :parked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CarState (<CarState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t4ac_msgs-msg:<CarState> is deprecated: use t4ac_msgs-msg:CarState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:header-val is deprecated.  Use t4ac_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'manual_mode-val :lambda-list '(m))
(cl:defmethod manual_mode-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:manual_mode-val is deprecated.  Use t4ac_msgs-msg:manual_mode instead.")
  (manual_mode m))

(cl:ensure-generic-function 'ready_mode-val :lambda-list '(m))
(cl:defmethod ready_mode-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:ready_mode-val is deprecated.  Use t4ac_msgs-msg:ready_mode instead.")
  (ready_mode m))

(cl:ensure-generic-function 'automatic_mode-val :lambda-list '(m))
(cl:defmethod automatic_mode-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:automatic_mode-val is deprecated.  Use t4ac_msgs-msg:automatic_mode instead.")
  (automatic_mode m))

(cl:ensure-generic-function 'actuated_brake-val :lambda-list '(m))
(cl:defmethod actuated_brake-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:actuated_brake-val is deprecated.  Use t4ac_msgs-msg:actuated_brake instead.")
  (actuated_brake m))

(cl:ensure-generic-function 'actuated_wheel-val :lambda-list '(m))
(cl:defmethod actuated_wheel-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:actuated_wheel-val is deprecated.  Use t4ac_msgs-msg:actuated_wheel instead.")
  (actuated_wheel m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:reverse-val is deprecated.  Use t4ac_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:forward-val is deprecated.  Use t4ac_msgs-msg:forward instead.")
  (forward m))

(cl:ensure-generic-function 'parked-val :lambda-list '(m))
(cl:defmethod parked-val ((m <CarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:parked-val is deprecated.  Use t4ac_msgs-msg:parked instead.")
  (parked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarState>) ostream)
  "Serializes a message object of type '<CarState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ready_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'automatic_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'actuated_brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'actuated_wheel) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'parked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarState>) istream)
  "Deserializes a message object of type '<CarState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'manual_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ready_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'automatic_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'actuated_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'actuated_wheel) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'parked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarState>)))
  "Returns string type for a message object of type '<CarState>"
  "t4ac_msgs/CarState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarState)))
  "Returns string type for a message object of type 'CarState"
  "t4ac_msgs/CarState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarState>)))
  "Returns md5sum for a message object of type '<CarState>"
  "6104b11829402233723a0180a9d22973")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarState)))
  "Returns md5sum for a message object of type 'CarState"
  "6104b11829402233723a0180a9d22973")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarState>)))
  "Returns full string definition for message of type '<CarState>"
  (cl:format cl:nil "# Created by J Felipe Arango - UAH - Robesafe~%~%Header header~%bool manual_mode~%bool ready_mode~%bool automatic_mode~%bool actuated_brake~%bool actuated_wheel~%bool reverse~%bool forward~%bool parked~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarState)))
  "Returns full string definition for message of type 'CarState"
  (cl:format cl:nil "# Created by J Felipe Arango - UAH - Robesafe~%~%Header header~%bool manual_mode~%bool ready_mode~%bool automatic_mode~%bool actuated_brake~%bool actuated_wheel~%bool reverse~%bool forward~%bool parked~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarState>))
  "Converts a ROS message object to a list"
  (cl:list 'CarState
    (cl:cons ':header (header msg))
    (cl:cons ':manual_mode (manual_mode msg))
    (cl:cons ':ready_mode (ready_mode msg))
    (cl:cons ':automatic_mode (automatic_mode msg))
    (cl:cons ':actuated_brake (actuated_brake msg))
    (cl:cons ':actuated_wheel (actuated_wheel msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':forward (forward msg))
    (cl:cons ':parked (parked msg))
))
