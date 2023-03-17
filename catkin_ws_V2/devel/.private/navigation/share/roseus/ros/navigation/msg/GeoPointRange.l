;; Auto-generated. Do not edit!


(when (boundp 'navigation::GeoPointRange)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'GeoPointRange (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::GEOPOINTRANGE")
  (make-package "NAVIGATION::GEOPOINTRANGE"))

(in-package "ROS")
;;//! \htmlinclude GeoPointRange.msg.html


(defclass navigation::GeoPointRange
  :super ros::object
  :slots (_min_latitude _max_latitude _min_longitude _max_longitude _min_altitude _max_altitude ))

(defmethod navigation::GeoPointRange
  (:init
   (&key
    ((:min_latitude __min_latitude) 0.0)
    ((:max_latitude __max_latitude) 0.0)
    ((:min_longitude __min_longitude) 0.0)
    ((:max_longitude __max_longitude) 0.0)
    ((:min_altitude __min_altitude) 0.0)
    ((:max_altitude __max_altitude) 0.0)
    )
   (send-super :init)
   (setq _min_latitude (float __min_latitude))
   (setq _max_latitude (float __max_latitude))
   (setq _min_longitude (float __min_longitude))
   (setq _max_longitude (float __max_longitude))
   (setq _min_altitude (float __min_altitude))
   (setq _max_altitude (float __max_altitude))
   self)
  (:min_latitude
   (&optional __min_latitude)
   (if __min_latitude (setq _min_latitude __min_latitude)) _min_latitude)
  (:max_latitude
   (&optional __max_latitude)
   (if __max_latitude (setq _max_latitude __max_latitude)) _max_latitude)
  (:min_longitude
   (&optional __min_longitude)
   (if __min_longitude (setq _min_longitude __min_longitude)) _min_longitude)
  (:max_longitude
   (&optional __max_longitude)
   (if __max_longitude (setq _max_longitude __max_longitude)) _max_longitude)
  (:min_altitude
   (&optional __min_altitude)
   (if __min_altitude (setq _min_altitude __min_altitude)) _min_altitude)
  (:max_altitude
   (&optional __max_altitude)
   (if __max_altitude (setq _max_altitude __max_altitude)) _max_altitude)
  (:serialization-length
   ()
   (+
    ;; float64 _min_latitude
    8
    ;; float64 _max_latitude
    8
    ;; float64 _min_longitude
    8
    ;; float64 _max_longitude
    8
    ;; float64 _min_altitude
    8
    ;; float64 _max_altitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _min_latitude
       (sys::poke _min_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_latitude
       (sys::poke _max_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_longitude
       (sys::poke _min_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_longitude
       (sys::poke _max_longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_altitude
       (sys::poke _min_altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_altitude
       (sys::poke _max_altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _min_latitude
     (setq _min_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_latitude
     (setq _max_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_longitude
     (setq _min_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_longitude
     (setq _max_longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_altitude
     (setq _min_altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_altitude
     (setq _max_altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get navigation::GeoPointRange :md5sum-) "8a4b85d7b91a11f0867d2e73a2c8f009")
(setf (get navigation::GeoPointRange :datatype-) "navigation/GeoPointRange")
(setf (get navigation::GeoPointRange :definition-)
      "float64 min_latitude
float64 max_latitude
float64 min_longitude
float64 max_longitude
float64 min_altitude
float64 max_altitude 

")



(provide :navigation/GeoPointRange "8a4b85d7b91a11f0867d2e73a2c8f009")


