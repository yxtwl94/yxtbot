; Auto-generated. Do not edit!


(cl:in-package service_demo-srv)


;//! \htmlinclude greeting-request.msg.html

(cl:defclass <greeting-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0))
)

(cl:defclass greeting-request (<greeting-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <greeting-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'greeting-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-srv:<greeting-request> is deprecated: use service_demo-srv:greeting-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <greeting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:name-val is deprecated.  Use service_demo-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <greeting-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:age-val is deprecated.  Use service_demo-srv:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <greeting-request>) ostream)
  "Serializes a message object of type '<greeting-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <greeting-request>) istream)
  "Deserializes a message object of type '<greeting-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<greeting-request>)))
  "Returns string type for a service object of type '<greeting-request>"
  "service_demo/greetingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'greeting-request)))
  "Returns string type for a service object of type 'greeting-request"
  "service_demo/greetingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<greeting-request>)))
  "Returns md5sum for a message object of type '<greeting-request>"
  "116e2074a4605229af423317e5dff099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'greeting-request)))
  "Returns md5sum for a message object of type 'greeting-request"
  "116e2074a4605229af423317e5dff099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<greeting-request>)))
  "Returns full string definition for message of type '<greeting-request>"
  (cl:format cl:nil "string name~%int32 age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'greeting-request)))
  "Returns full string definition for message of type 'greeting-request"
  (cl:format cl:nil "string name~%int32 age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <greeting-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <greeting-request>))
  "Converts a ROS message object to a list"
  (cl:list 'greeting-request
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
))
;//! \htmlinclude greeting-response.msg.html

(cl:defclass <greeting-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass greeting-response (<greeting-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <greeting-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'greeting-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-srv:<greeting-response> is deprecated: use service_demo-srv:greeting-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <greeting-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:feedback-val is deprecated.  Use service_demo-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <greeting-response>) ostream)
  "Serializes a message object of type '<greeting-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <greeting-response>) istream)
  "Deserializes a message object of type '<greeting-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<greeting-response>)))
  "Returns string type for a service object of type '<greeting-response>"
  "service_demo/greetingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'greeting-response)))
  "Returns string type for a service object of type 'greeting-response"
  "service_demo/greetingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<greeting-response>)))
  "Returns md5sum for a message object of type '<greeting-response>"
  "116e2074a4605229af423317e5dff099")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'greeting-response)))
  "Returns md5sum for a message object of type 'greeting-response"
  "116e2074a4605229af423317e5dff099")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<greeting-response>)))
  "Returns full string definition for message of type '<greeting-response>"
  (cl:format cl:nil "string feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'greeting-response)))
  "Returns full string definition for message of type 'greeting-response"
  (cl:format cl:nil "string feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <greeting-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <greeting-response>))
  "Converts a ROS message object to a list"
  (cl:list 'greeting-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'greeting)))
  'greeting-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'greeting)))
  'greeting-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'greeting)))
  "Returns string type for a service object of type '<greeting>"
  "service_demo/greeting")