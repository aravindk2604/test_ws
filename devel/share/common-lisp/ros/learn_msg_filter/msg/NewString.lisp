; Auto-generated. Do not edit!


(cl:in-package learn_msg_filter-msg)


;//! \htmlinclude NewString.msg.html

(cl:defclass <NewString> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (st
    :reader st
    :initarg :st
    :type cl:string
    :initform ""))
)

(cl:defclass NewString (<NewString>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NewString>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NewString)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learn_msg_filter-msg:<NewString> is deprecated: use learn_msg_filter-msg:NewString instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NewString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learn_msg_filter-msg:header-val is deprecated.  Use learn_msg_filter-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'st-val :lambda-list '(m))
(cl:defmethod st-val ((m <NewString>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learn_msg_filter-msg:st-val is deprecated.  Use learn_msg_filter-msg:st instead.")
  (st m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NewString>) ostream)
  "Serializes a message object of type '<NewString>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'st))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'st))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NewString>) istream)
  "Deserializes a message object of type '<NewString>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'st) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'st) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NewString>)))
  "Returns string type for a message object of type '<NewString>"
  "learn_msg_filter/NewString")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NewString)))
  "Returns string type for a message object of type 'NewString"
  "learn_msg_filter/NewString")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NewString>)))
  "Returns md5sum for a message object of type '<NewString>"
  "c2d740582137ac619a96dd7006cca5d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NewString)))
  "Returns md5sum for a message object of type 'NewString"
  "c2d740582137ac619a96dd7006cca5d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NewString>)))
  "Returns full string definition for message of type '<NewString>"
  (cl:format cl:nil "std_msgs/Header header~%string st~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NewString)))
  "Returns full string definition for message of type 'NewString"
  (cl:format cl:nil "std_msgs/Header header~%string st~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NewString>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'st))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NewString>))
  "Converts a ROS message object to a list"
  (cl:list 'NewString
    (cl:cons ':header (header msg))
    (cl:cons ':st (st msg))
))
