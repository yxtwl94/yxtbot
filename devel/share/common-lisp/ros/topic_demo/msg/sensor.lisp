; Auto-generated. Do not edit!


(cl:in-package topic_demo-msg)


;//! \htmlinclude sensor.msg.html

(cl:defclass <sensor> (roslisp-msg-protocol:ros-message)
  ((v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass sensor (<sensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name topic_demo-msg:<sensor> is deprecated: use topic_demo-msg:sensor instead.")))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_demo-msg:v-val is deprecated.  Use topic_demo-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_demo-msg:a-val is deprecated.  Use topic_demo-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <sensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader topic_demo-msg:state-val is deprecated.  Use topic_demo-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensor>) ostream)
  "Serializes a message object of type '<sensor>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensor>) istream)
  "Deserializes a message object of type '<sensor>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensor>)))
  "Returns string type for a message object of type '<sensor>"
  "topic_demo/sensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensor)))
  "Returns string type for a message object of type 'sensor"
  "topic_demo/sensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensor>)))
  "Returns md5sum for a message object of type '<sensor>"
  "14392deb7dca06dde43c9beda3dea87b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensor)))
  "Returns md5sum for a message object of type 'sensor"
  "14392deb7dca06dde43c9beda3dea87b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensor>)))
  "Returns full string definition for message of type '<sensor>"
  (cl:format cl:nil "float32 v~%float32 a~%string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensor)))
  "Returns full string definition for message of type 'sensor"
  (cl:format cl:nil "float32 v~%float32 a~%string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensor>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensor>))
  "Converts a ROS message object to a list"
  (cl:list 'sensor
    (cl:cons ':v (v msg))
    (cl:cons ':a (a msg))
    (cl:cons ':state (state msg))
))
