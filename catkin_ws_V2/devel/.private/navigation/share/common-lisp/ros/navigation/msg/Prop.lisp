; Auto-generated. Do not edit!


(cl:in-package navigation-msg)


;//! \htmlinclude Prop.msg.html

(cl:defclass <Prop> (roslisp-msg-protocol:ros-message)
  ((prop_type
    :reader prop_type
    :initarg :prop_type
    :type cl:string
    :initform "")
   (prop_coords
    :reader prop_coords
    :initarg :prop_coords
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint))
   (prop_coord_range
    :reader prop_coord_range
    :initarg :prop_coord_range
    :type navigation-msg:GeoPointRange
    :initform (cl:make-instance 'navigation-msg:GeoPointRange)))
)

(cl:defclass Prop (<Prop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Prop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Prop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-msg:<Prop> is deprecated: use navigation-msg:Prop instead.")))

(cl:ensure-generic-function 'prop_type-val :lambda-list '(m))
(cl:defmethod prop_type-val ((m <Prop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:prop_type-val is deprecated.  Use navigation-msg:prop_type instead.")
  (prop_type m))

(cl:ensure-generic-function 'prop_coords-val :lambda-list '(m))
(cl:defmethod prop_coords-val ((m <Prop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:prop_coords-val is deprecated.  Use navigation-msg:prop_coords instead.")
  (prop_coords m))

(cl:ensure-generic-function 'prop_coord_range-val :lambda-list '(m))
(cl:defmethod prop_coord_range-val ((m <Prop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:prop_coord_range-val is deprecated.  Use navigation-msg:prop_coord_range instead.")
  (prop_coord_range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Prop>) ostream)
  "Serializes a message object of type '<Prop>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prop_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prop_type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'prop_coords) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'prop_coord_range) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Prop>) istream)
  "Deserializes a message object of type '<Prop>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prop_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prop_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'prop_coords) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'prop_coord_range) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Prop>)))
  "Returns string type for a message object of type '<Prop>"
  "navigation/Prop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Prop)))
  "Returns string type for a message object of type 'Prop"
  "navigation/Prop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Prop>)))
  "Returns md5sum for a message object of type '<Prop>"
  "179b91140665e240f19504a5815eac9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Prop)))
  "Returns md5sum for a message object of type 'Prop"
  "179b91140665e240f19504a5815eac9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Prop>)))
  "Returns full string definition for message of type '<Prop>"
  (cl:format cl:nil "string prop_type~%geographic_msgs/GeoPoint prop_coords~%GeoPointRange prop_coord_range~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: navigation/GeoPointRange~%float64 min_latitude~%float64 max_latitude~%float64 min_longitude~%float64 max_longitude~%float64 min_altitude~%float64 max_altitude ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Prop)))
  "Returns full string definition for message of type 'Prop"
  (cl:format cl:nil "string prop_type~%geographic_msgs/GeoPoint prop_coords~%GeoPointRange prop_coord_range~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: navigation/GeoPointRange~%float64 min_latitude~%float64 max_latitude~%float64 min_longitude~%float64 max_longitude~%float64 min_altitude~%float64 max_altitude ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Prop>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prop_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'prop_coords))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'prop_coord_range))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Prop>))
  "Converts a ROS message object to a list"
  (cl:list 'Prop
    (cl:cons ':prop_type (prop_type msg))
    (cl:cons ':prop_coords (prop_coords msg))
    (cl:cons ':prop_coord_range (prop_coord_range msg))
))
