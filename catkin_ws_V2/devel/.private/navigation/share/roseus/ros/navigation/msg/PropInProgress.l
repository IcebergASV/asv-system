;; Auto-generated. Do not edit!


(when (boundp 'navigation::PropInProgress)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'PropInProgress (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::PROPINPROGRESS")
  (make-package "NAVIGATION::PROPINPROGRESS"))

(in-package "ROS")
;;//! \htmlinclude PropInProgress.msg.html
(if (not (find-package "GEOGRAPHIC_MSGS"))
  (ros::roseus-add-msgs "geographic_msgs"))


(defclass navigation::PropInProgress
  :super ros::object
  :slots (_prop_type _theta_1 _theta_2 _closest_pnt_dist _closest_pnt_angle _prop_coords ))

(defmethod navigation::PropInProgress
  (:init
   (&key
    ((:prop_type __prop_type) "")
    ((:theta_1 __theta_1) 0.0)
    ((:theta_2 __theta_2) 0.0)
    ((:closest_pnt_dist __closest_pnt_dist) 0.0)
    ((:closest_pnt_angle __closest_pnt_angle) 0.0)
    ((:prop_coords __prop_coords) (instance geographic_msgs::GeoPoint :init))
    )
   (send-super :init)
   (setq _prop_type (string __prop_type))
   (setq _theta_1 (float __theta_1))
   (setq _theta_2 (float __theta_2))
   (setq _closest_pnt_dist (float __closest_pnt_dist))
   (setq _closest_pnt_angle (float __closest_pnt_angle))
   (setq _prop_coords __prop_coords)
   self)
  (:prop_type
   (&optional __prop_type)
   (if __prop_type (setq _prop_type __prop_type)) _prop_type)
  (:theta_1
   (&optional __theta_1)
   (if __theta_1 (setq _theta_1 __theta_1)) _theta_1)
  (:theta_2
   (&optional __theta_2)
   (if __theta_2 (setq _theta_2 __theta_2)) _theta_2)
  (:closest_pnt_dist
   (&optional __closest_pnt_dist)
   (if __closest_pnt_dist (setq _closest_pnt_dist __closest_pnt_dist)) _closest_pnt_dist)
  (:closest_pnt_angle
   (&optional __closest_pnt_angle)
   (if __closest_pnt_angle (setq _closest_pnt_angle __closest_pnt_angle)) _closest_pnt_angle)
  (:prop_coords
   (&rest __prop_coords)
   (if (keywordp (car __prop_coords))
       (send* _prop_coords __prop_coords)
     (progn
       (if __prop_coords (setq _prop_coords (car __prop_coords)))
       _prop_coords)))
  (:serialization-length
   ()
   (+
    ;; string _prop_type
    4 (length _prop_type)
    ;; float32 _theta_1
    4
    ;; float32 _theta_2
    4
    ;; float32 _closest_pnt_dist
    4
    ;; float32 _closest_pnt_angle
    4
    ;; geographic_msgs/GeoPoint _prop_coords
    (send _prop_coords :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prop_type
       (write-long (length _prop_type) s) (princ _prop_type s)
     ;; float32 _theta_1
       (sys::poke _theta_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta_2
       (sys::poke _theta_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _closest_pnt_dist
       (sys::poke _closest_pnt_dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _closest_pnt_angle
       (sys::poke _closest_pnt_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geographic_msgs/GeoPoint _prop_coords
       (send _prop_coords :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prop_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prop_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _theta_1
     (setq _theta_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta_2
     (setq _theta_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _closest_pnt_dist
     (setq _closest_pnt_dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _closest_pnt_angle
     (setq _closest_pnt_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geographic_msgs/GeoPoint _prop_coords
     (send _prop_coords :deserialize buf ptr-) (incf ptr- (send _prop_coords :serialization-length))
   ;;
   self)
  )

(setf (get navigation::PropInProgress :md5sum-) "d6c33540b8c16df4f5cfffc348148909")
(setf (get navigation::PropInProgress :datatype-) "navigation/PropInProgress")
(setf (get navigation::PropInProgress :definition-)
      "string prop_type
float32 theta_1
float32 theta_2
float32 closest_pnt_dist
float32 closest_pnt_angle
geographic_msgs/GeoPoint prop_coords


================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

")



(provide :navigation/PropInProgress "d6c33540b8c16df4f5cfffc348148909")


