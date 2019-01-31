;; Auto-generated. Do not edit!


(when (boundp 'service_demo::greeting)
  (if (not (find-package "SERVICE_DEMO"))
    (make-package "SERVICE_DEMO"))
  (shadow 'greeting (find-package "SERVICE_DEMO")))
(unless (find-package "SERVICE_DEMO::GREETING")
  (make-package "SERVICE_DEMO::GREETING"))
(unless (find-package "SERVICE_DEMO::GREETINGREQUEST")
  (make-package "SERVICE_DEMO::GREETINGREQUEST"))
(unless (find-package "SERVICE_DEMO::GREETINGRESPONSE")
  (make-package "SERVICE_DEMO::GREETINGRESPONSE"))

(in-package "ROS")





(defclass service_demo::greetingRequest
  :super ros::object
  :slots (_name _age ))

(defmethod service_demo::greetingRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_demo::greetingResponse
  :super ros::object
  :slots (_feedback ))

(defmethod service_demo::greetingResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass service_demo::greeting
  :super ros::object
  :slots ())

(setf (get service_demo::greeting :md5sum-) "116e2074a4605229af423317e5dff099")
(setf (get service_demo::greeting :datatype-) "service_demo/greeting")
(setf (get service_demo::greeting :request) service_demo::greetingRequest)
(setf (get service_demo::greeting :response) service_demo::greetingResponse)

(defmethod service_demo::greetingRequest
  (:response () (instance service_demo::greetingResponse :init)))

(setf (get service_demo::greetingRequest :md5sum-) "116e2074a4605229af423317e5dff099")
(setf (get service_demo::greetingRequest :datatype-) "service_demo/greetingRequest")
(setf (get service_demo::greetingRequest :definition-)
      "string name
int32 age
---
string feedback

")

(setf (get service_demo::greetingResponse :md5sum-) "116e2074a4605229af423317e5dff099")
(setf (get service_demo::greetingResponse :datatype-) "service_demo/greetingResponse")
(setf (get service_demo::greetingResponse :definition-)
      "string name
int32 age
---
string feedback

")



(provide :service_demo/greeting "116e2074a4605229af423317e5dff099")


