;; Auto-generated. Do not edit!


(when (boundp 'navigation::Prop)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'Prop (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::PROP")
  (make-package "NAVIGATION::PROP"))

(in-package "ROS")
;;//! \htmlinclude Prop.msg.html
(if (not (find-package "GEOGRAPHIC_MSGS"))
  (ros::roseus-add-msgs "geographic_msgs"))


(defclass navigation::Prop
  :super ros::object
  :slots (_prop_type _prop_coords _prop_coord_range ))

(defmethod navigation::Prop
  (:init
   (&key
    ((:prop_type __prop_type) "")
    ((:prop_coords __prop_coords) (instance geographic_msgs::GeoPoint :init))
    ((:prop_coord_range __prop_coord_range) (instance navigation::GeoPointRange :init))
    )
   (send-super :init)
   (setq _prop_type (string __prop_type))
   (setq _prop_coords __prop_coords)
   (setq _prop_coord_range __prop_coord_range)
   self)
  (:prop_type
   (&optional __prop_type)
   (if __prop_type (setq _prop_type __prop_type)) _prop_type)
  (:prop_coords
   (&rest __prop_coords)
   (if (keywordp (car __prop_coords))
       (send* _prop_coords __prop_coords)
     (progn
       (if __prop_coords (setq _prop_coords (car __prop_coords)))
       _prop_coords)))
  (:prop_coord_range
   (&rest __prop_coord_range)
   (if (keywordp (car __prop_coord_range))
       (send* _prop_coord_range __prop_coord_range)
     (progn
       (if __prop_coord_range (setq _prop_coord_range (car __prop_coord_range)))
       _prop_coord_range)))
  (:serialization-length
   ()
   (+
    ;; string _prop_type
    4 (length _prop_type)
    ;; geographic_msgs/GeoPoint _prop_coords
    (send _prop_coords :serialization-length)
    ;; navigation/GeoPointRange _prop_coord_range
    (send _prop_coord_range :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prop_type
       (write-long (length _prop_type) s) (princ _prop_type s)
     ;; geographic_msgs/GeoPoint _prop_coords
       (send _prop_coords :serialize s)
     ;; navigation/GeoPointRange _prop_coord_range
       (send _prop_coord_range :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prop_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prop_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geographic_msgs/GeoPoint _prop_coords
     (send _prop_coords :deserialize buf ptr-) (incf ptr- (send _prop_coords :serialization-length))
   ;; navigation/GeoPointRange _prop_coord_range
     (send _prop_coord_range :deserialize buf ptr-) (incf ptr- (send _prop_coord_range :serialization-length))
   ;;
   self)
  )

(setf (get navigation::Prop :md5sum-) "179b91140665e240f19504a5815eac9f")
(setf (get navigation::Prop :datatype-) "navigation/Prop")
(setf (get navigation::Prop :definition-)
      "string prop_type
geographic_msgs/GeoPoint prop_coords
GeoPointRange prop_coord_range
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

================================================================================
MSG: navigation/GeoPointRange
float64 min_latitude
float64 max_latitude
float64 min_longitude
float64 max_longitude
float64 min_altitude
float64 max_altitude 

")



(provide :navigation/Prop "179b91140665e240f19504a5815eac9f")


