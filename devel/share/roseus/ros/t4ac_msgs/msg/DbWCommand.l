;; Auto-generated. Do not edit!


(when (boundp 't4ac_msgs::DbWCommand)
  (if (not (find-package "T4AC_MSGS"))
    (make-package "T4AC_MSGS"))
  (shadow 'DbWCommand (find-package "T4AC_MSGS")))
(unless (find-package "T4AC_MSGS::DBWCOMMAND")
  (make-package "T4AC_MSGS::DBWCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DbWCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass t4ac_msgs::DbWCommand
  :super ros::object
  :slots (_header _steering_wheel_angle _drive_wheel_velocity ))

(defmethod t4ac_msgs::DbWCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_wheel_angle __steering_wheel_angle) 0)
    ((:drive_wheel_velocity __drive_wheel_velocity) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_wheel_angle (round __steering_wheel_angle))
   (setq _drive_wheel_velocity (round __drive_wheel_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_wheel_angle
   (&optional __steering_wheel_angle)
   (if __steering_wheel_angle (setq _steering_wheel_angle __steering_wheel_angle)) _steering_wheel_angle)
  (:drive_wheel_velocity
   (&optional __drive_wheel_velocity)
   (if __drive_wheel_velocity (setq _drive_wheel_velocity __drive_wheel_velocity)) _drive_wheel_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _steering_wheel_angle
    4
    ;; int32 _drive_wheel_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _steering_wheel_angle
       (write-long _steering_wheel_angle s)
     ;; int32 _drive_wheel_velocity
       (write-long _drive_wheel_velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _steering_wheel_angle
     (setq _steering_wheel_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drive_wheel_velocity
     (setq _drive_wheel_velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get t4ac_msgs::DbWCommand :md5sum-) "830e29ecfc231fdd577b637ca7bbb417")
(setf (get t4ac_msgs::DbWCommand :datatype-) "t4ac_msgs/DbWCommand")
(setf (get t4ac_msgs::DbWCommand :definition-)
      "# Creado por Elena López Guillén
## Ángulo del volante en grados y velocidad de la rueda en grados/s. Valores enteros
## para enviar a través de bus can a la ECU


Header header
int32 steering_wheel_angle      # angulo del volante en grados. Positivo hacia la izda.
int32 drive_wheel_velocity 	# velocidad de la rueda en grados/s. Positiva hacia adelante.



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

")



(provide :t4ac_msgs/DbWCommand "830e29ecfc231fdd577b637ca7bbb417")


