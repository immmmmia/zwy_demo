;; Auto-generated. Do not edit!


(when (boundp 't4ac_msgs::CarState)
  (if (not (find-package "T4AC_MSGS"))
    (make-package "T4AC_MSGS"))
  (shadow 'CarState (find-package "T4AC_MSGS")))
(unless (find-package "T4AC_MSGS::CARSTATE")
  (make-package "T4AC_MSGS::CARSTATE"))

(in-package "ROS")
;;//! \htmlinclude CarState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass t4ac_msgs::CarState
  :super ros::object
  :slots (_header _manual_mode _ready_mode _automatic_mode _actuated_brake _actuated_wheel _reverse _forward _parked ))

(defmethod t4ac_msgs::CarState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:manual_mode __manual_mode) nil)
    ((:ready_mode __ready_mode) nil)
    ((:automatic_mode __automatic_mode) nil)
    ((:actuated_brake __actuated_brake) nil)
    ((:actuated_wheel __actuated_wheel) nil)
    ((:reverse __reverse) nil)
    ((:forward __forward) nil)
    ((:parked __parked) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _manual_mode __manual_mode)
   (setq _ready_mode __ready_mode)
   (setq _automatic_mode __automatic_mode)
   (setq _actuated_brake __actuated_brake)
   (setq _actuated_wheel __actuated_wheel)
   (setq _reverse __reverse)
   (setq _forward __forward)
   (setq _parked __parked)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:manual_mode
   (&optional (__manual_mode :null))
   (if (not (eq __manual_mode :null)) (setq _manual_mode __manual_mode)) _manual_mode)
  (:ready_mode
   (&optional (__ready_mode :null))
   (if (not (eq __ready_mode :null)) (setq _ready_mode __ready_mode)) _ready_mode)
  (:automatic_mode
   (&optional (__automatic_mode :null))
   (if (not (eq __automatic_mode :null)) (setq _automatic_mode __automatic_mode)) _automatic_mode)
  (:actuated_brake
   (&optional (__actuated_brake :null))
   (if (not (eq __actuated_brake :null)) (setq _actuated_brake __actuated_brake)) _actuated_brake)
  (:actuated_wheel
   (&optional (__actuated_wheel :null))
   (if (not (eq __actuated_wheel :null)) (setq _actuated_wheel __actuated_wheel)) _actuated_wheel)
  (:reverse
   (&optional (__reverse :null))
   (if (not (eq __reverse :null)) (setq _reverse __reverse)) _reverse)
  (:forward
   (&optional (__forward :null))
   (if (not (eq __forward :null)) (setq _forward __forward)) _forward)
  (:parked
   (&optional (__parked :null))
   (if (not (eq __parked :null)) (setq _parked __parked)) _parked)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _manual_mode
    1
    ;; bool _ready_mode
    1
    ;; bool _automatic_mode
    1
    ;; bool _actuated_brake
    1
    ;; bool _actuated_wheel
    1
    ;; bool _reverse
    1
    ;; bool _forward
    1
    ;; bool _parked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _manual_mode
       (if _manual_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _ready_mode
       (if _ready_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _automatic_mode
       (if _automatic_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _actuated_brake
       (if _actuated_brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _actuated_wheel
       (if _actuated_wheel (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _parked
       (if _parked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _manual_mode
     (setq _manual_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready_mode
     (setq _ready_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _automatic_mode
     (setq _automatic_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _actuated_brake
     (setq _actuated_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _actuated_wheel
     (setq _actuated_wheel (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _parked
     (setq _parked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get t4ac_msgs::CarState :md5sum-) "6104b11829402233723a0180a9d22973")
(setf (get t4ac_msgs::CarState :datatype-) "t4ac_msgs/CarState")
(setf (get t4ac_msgs::CarState :definition-)
      "# Created by J Felipe Arango - UAH - Robesafe

Header header
bool manual_mode
bool ready_mode
bool automatic_mode
bool actuated_brake
bool actuated_wheel
bool reverse
bool forward
bool parked

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



(provide :t4ac_msgs/CarState "6104b11829402233723a0180a9d22973")


