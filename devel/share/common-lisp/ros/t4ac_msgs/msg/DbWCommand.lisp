; Auto-generated. Do not edit!


(cl:in-package t4ac_msgs-msg)


;//! \htmlinclude DbWCommand.msg.html

(cl:defclass <DbWCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering_wheel_angle
    :reader steering_wheel_angle
    :initarg :steering_wheel_angle
    :type cl:integer
    :initform 0)
   (drive_wheel_velocity
    :reader drive_wheel_velocity
    :initarg :drive_wheel_velocity
    :type cl:integer
    :initform 0))
)

(cl:defclass DbWCommand (<DbWCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DbWCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DbWCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name t4ac_msgs-msg:<DbWCommand> is deprecated: use t4ac_msgs-msg:DbWCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DbWCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:header-val is deprecated.  Use t4ac_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_wheel_angle-val :lambda-list '(m))
(cl:defmethod steering_wheel_angle-val ((m <DbWCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:steering_wheel_angle-val is deprecated.  Use t4ac_msgs-msg:steering_wheel_angle instead.")
  (steering_wheel_angle m))

(cl:ensure-generic-function 'drive_wheel_velocity-val :lambda-list '(m))
(cl:defmethod drive_wheel_velocity-val ((m <DbWCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader t4ac_msgs-msg:drive_wheel_velocity-val is deprecated.  Use t4ac_msgs-msg:drive_wheel_velocity instead.")
  (drive_wheel_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DbWCommand>) ostream)
  "Serializes a message object of type '<DbWCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'steering_wheel_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drive_wheel_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DbWCommand>) istream)
  "Deserializes a message object of type '<DbWCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_wheel_angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drive_wheel_velocity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DbWCommand>)))
  "Returns string type for a message object of type '<DbWCommand>"
  "t4ac_msgs/DbWCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DbWCommand)))
  "Returns string type for a message object of type 'DbWCommand"
  "t4ac_msgs/DbWCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DbWCommand>)))
  "Returns md5sum for a message object of type '<DbWCommand>"
  "830e29ecfc231fdd577b637ca7bbb417")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DbWCommand)))
  "Returns md5sum for a message object of type 'DbWCommand"
  "830e29ecfc231fdd577b637ca7bbb417")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DbWCommand>)))
  "Returns full string definition for message of type '<DbWCommand>"
  (cl:format cl:nil "# Creado por Elena López Guillén~%## Ángulo del volante en grados y velocidad de la rueda en grados/s. Valores enteros~%## para enviar a través de bus can a la ECU~%~%~%Header header~%int32 steering_wheel_angle      # angulo del volante en grados. Positivo hacia la izda.~%int32 drive_wheel_velocity 	# velocidad de la rueda en grados/s. Positiva hacia adelante.~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DbWCommand)))
  "Returns full string definition for message of type 'DbWCommand"
  (cl:format cl:nil "# Creado por Elena López Guillén~%## Ángulo del volante en grados y velocidad de la rueda en grados/s. Valores enteros~%## para enviar a través de bus can a la ECU~%~%~%Header header~%int32 steering_wheel_angle      # angulo del volante en grados. Positivo hacia la izda.~%int32 drive_wheel_velocity 	# velocidad de la rueda en grados/s. Positiva hacia adelante.~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DbWCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DbWCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DbWCommand
    (cl:cons ':header (header msg))
    (cl:cons ':steering_wheel_angle (steering_wheel_angle msg))
    (cl:cons ':drive_wheel_velocity (drive_wheel_velocity msg))
))
