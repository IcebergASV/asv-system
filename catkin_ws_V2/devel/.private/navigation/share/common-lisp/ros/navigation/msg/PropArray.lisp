; Auto-generated. Do not edit!


(cl:in-package navigation-msg)


;//! \htmlinclude PropArray.msg.html

(cl:defclass <PropArray> (roslisp-msg-protocol:ros-message)
  ((props
    :reader props
    :initarg :props
    :type (cl:vector navigation-msg:Prop)
   :initform (cl:make-array 0 :element-type 'navigation-msg:Prop :initial-element (cl:make-instance 'navigation-msg:Prop))))
)

(cl:defclass PropArray (<PropArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PropArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PropArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-msg:<PropArray> is deprecated: use navigation-msg:PropArray instead.")))

(cl:ensure-generic-function 'props-val :lambda-list '(m))
(cl:defmethod props-val ((m <PropArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:props-val is deprecated.  Use navigation-msg:props instead.")
  (props m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PropArray>) ostream)
  "Serializes a message object of type '<PropArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'props))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'props))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PropArray>) istream)
  "Deserializes a message object of type '<PropArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'props) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'props)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'navigation-msg:Prop))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PropArray>)))
  "Returns string type for a message object of type '<PropArray>"
  "navigation/PropArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PropArray)))
  "Returns string type for a message object of type 'PropArray"
  "navigation/PropArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PropArray>)))
  "Returns md5sum for a message object of type '<PropArray>"
  "683038ca6db71a08ccd7ab7ebcf3ff8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PropArray)))
  "Returns md5sum for a message object of type 'PropArray"
  "683038ca6db71a08ccd7ab7ebcf3ff8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PropArray>)))
  "Returns full string definition for message of type '<PropArray>"
  (cl:format cl:nil "Prop[] props~%~%================================================================================~%MSG: navigation/Prop~%string prop_type~%geographic_msgs/GeoPoint prop_coords~%GeoPointRange prop_coord_range~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: navigation/GeoPointRange~%float64 min_latitude~%float64 max_latitude~%float64 min_longitude~%float64 max_longitude~%float64 min_altitude~%float64 max_altitude ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PropArray)))
  "Returns full string definition for message of type 'PropArray"
  (cl:format cl:nil "Prop[] props~%~%================================================================================~%MSG: navigation/Prop~%string prop_type~%geographic_msgs/GeoPoint prop_coords~%GeoPointRange prop_coord_range~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: navigation/GeoPointRange~%float64 min_latitude~%float64 max_latitude~%float64 min_longitude~%float64 max_longitude~%float64 min_altitude~%float64 max_altitude ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PropArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'props) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PropArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PropArray
    (cl:cons ':props (props msg))
))
