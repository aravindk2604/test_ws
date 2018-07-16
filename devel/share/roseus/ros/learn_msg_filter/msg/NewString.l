;; Auto-generated. Do not edit!


(when (boundp 'learn_msg_filter::NewString)
  (if (not (find-package "LEARN_MSG_FILTER"))
    (make-package "LEARN_MSG_FILTER"))
  (shadow 'NewString (find-package "LEARN_MSG_FILTER")))
(unless (find-package "LEARN_MSG_FILTER::NEWSTRING")
  (make-package "LEARN_MSG_FILTER::NEWSTRING"))

(in-package "ROS")
;;//! \htmlinclude NewString.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass learn_msg_filter::NewString
  :super ros::object
  :slots (_header _st ))

(defmethod learn_msg_filter::NewString
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:st __st) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _st (string __st))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:st
   (&optional __st)
   (if __st (setq _st __st)) _st)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _st
    4 (length _st)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _st
       (write-long (length _st) s) (princ _st s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _st
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _st (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get learn_msg_filter::NewString :md5sum-) "c2d740582137ac619a96dd7006cca5d3")
(setf (get learn_msg_filter::NewString :datatype-) "learn_msg_filter/NewString")
(setf (get learn_msg_filter::NewString :definition-)
      "std_msgs/Header header
string st
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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :learn_msg_filter/NewString "c2d740582137ac619a96dd7006cca5d3")


