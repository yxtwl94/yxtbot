;; Auto-generated. Do not edit!


(when (boundp 'topic_demo::sensor)
  (if (not (find-package "TOPIC_DEMO"))
    (make-package "TOPIC_DEMO"))
  (shadow 'sensor (find-package "TOPIC_DEMO")))
(unless (find-package "TOPIC_DEMO::SENSOR")
  (make-package "TOPIC_DEMO::SENSOR"))

(in-package "ROS")
;;//! \htmlinclude sensor.msg.html


(defclass topic_demo::sensor
  :super ros::object
  :slots (_v _a _state ))

(defmethod topic_demo::sensor
  (:init
   (&key
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    ((:state __state) "")
    )
   (send-super :init)
   (setq _v (float __v))
   (setq _a (float __a))
   (setq _state (string __state))
   self)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; float32 _v
    4
    ;; float32 _a
    4
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get topic_demo::sensor :md5sum-) "14392deb7dca06dde43c9beda3dea87b")
(setf (get topic_demo::sensor :datatype-) "topic_demo/sensor")
(setf (get topic_demo::sensor :definition-)
      "float32 v
float32 a
string state

")



(provide :topic_demo/sensor "14392deb7dca06dde43c9beda3dea87b")


