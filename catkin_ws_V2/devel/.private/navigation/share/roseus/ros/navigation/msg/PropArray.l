;; Auto-generated. Do not edit!


(when (boundp 'navigation::PropArray)
  (if (not (find-package "NAVIGATION"))
    (make-package "NAVIGATION"))
  (shadow 'PropArray (find-package "NAVIGATION")))
(unless (find-package "NAVIGATION::PROPARRAY")
  (make-package "NAVIGATION::PROPARRAY"))

(in-package "ROS")
;;//! \htmlinclude PropArray.msg.html


(defclass navigation::PropArray
  :super ros::object
  :slots (_props ))

(defmethod navigation::PropArray
  (:init
   (&key
    ((:props __props) (let (r) (dotimes (i 0) (push (instance navigation::Prop :init) r)) r))
    )
   (send-super :init)
   (setq _props __props)
   self)
  (:props
   (&rest __props)
   (if (keywordp (car __props))
       (send* _props __props)
     (progn
       (if __props (setq _props (car __props)))
       _props)))
  (:serialization-length
   ()
   (+
    ;; navigation/Prop[] _props
    (apply #'+ (send-all _props :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; navigation/Prop[] _props
     (write-long (length _props) s)
     (dolist (elem _props)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; navigation/Prop[] _props
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _props (let (r) (dotimes (i n) (push (instance navigation::Prop :init) r)) r))
     (dolist (elem- _props)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get navigation::PropArray :md5sum-) "683038ca6db71a08ccd7ab7ebcf3ff8f")
(setf (get navigation::PropArray :datatype-) "navigation/PropArray")
(setf (get navigation::PropArray :definition-)
      "Prop[] props

================================================================================
MSG: navigation/Prop
string prop_type
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



(provide :navigation/PropArray "683038ca6db71a08ccd7ab7ebcf3ff8f")


