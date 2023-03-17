; Auto-generated. Do not edit!


(cl:in-package navigation-msg)


;//! \htmlinclude PropInProgress.msg.html

(cl:defclass <PropInProgress> (roslisp-msg-protocol:ros-message)
  ((prop_type
    :reader prop_type
    :initarg :prop_type
    :type cl:string
    :initform "")
   (theta_1
    :reader theta_1
    :initarg :theta_1
    :type cl:float
    :initform 0.0)
   (theta_2
    :reader theta_2
    :initarg :theta_2
    :type cl:float
    :initform 0.0)
   (closest_pnt_dist
    :reader closest_pnt_dist
    :initarg :closest_pnt_dist
    :type cl:float
    :initform 0.0)
   (closest_pnt_angle
    :reader closest_pnt_angle
    :initarg :closest_pnt_angle
    :type cl:float
    :initform 0.0)
   (prop_coords
    :reader prop_coords
    :initarg :prop_coords
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint)))
)

(cl:defclass PropInProgress (<PropInProgress>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PropInProgress>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PropInProgress)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-msg:<PropInProgress> is deprecated: use navigation-msg:PropInProgress instead.")))

(cl:ensure-generic-function 'prop_type-val :lambda-list '(m))
(cl:defmethod prop_type-val ((m <PropInProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:prop_type-val is deprecated.  Use navigation-msg:prop_type instead.")
  (prop_type m))

(cl:ensure-generic-function 'theta_1-val :lambda-list '(m))
(cl:defmethod theta_1-val ((m <PropInProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:theta_1-val is deprecated.  Use navigation-msg:theta_1 instead.")
  (theta_1 m))

(cl:ensure-generic-function 'theta_2-val :lambda-list '(m))
(cl:defmethod theta_2-val ((m <PropInProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:theta_2-val is deprecated.  Use navigation-msg:theta_2 instead.")
  (theta_2 m))

(cl:ensure-generic-function 'closest_pnt_dist-val :lambda-list '(m))
(cl:defmethod closest_pnt_dist-val ((m <PropInProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:closest_pnt_dist-val is deprecated.  Use navigation-msg:closest_pnt_dist instead.")
  (closest_pnt_dist m))

(cl:ensure-generic-function 'closest_pnt_angle-val :lambda-list '(m))
(cl:defmethod closest_pnt_angle-val ((m <PropInProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:closest_pnt_angle-val is deprecated.  Use navigation-msg:closest_pnt_angle instead.")
  (closest_pnt_angle m))

(cl:ensure-generic-function 'prop_coords-val :lambda-list '(m))
(cl:defmethod prop_coords-val ((m <PropInProgress>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:prop_coords-val is deprecated.  Use navigation-msg:prop_coords instead.")
  (prop_coords m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PropInProgress>) ostream)
  "Serializes a message object of type '<PropInProgress>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prop_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prop_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closest_pnt_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'closest_pnt_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'prop_coords) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PropInProgress>) istream)
  "Deserializes a message object of type '<PropInProgress>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prop_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prop_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest_pnt_dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'closest_pnt_angle) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'prop_coords) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PropInProgress>)))
  "Returns string type for a message object of type '<PropInProgress>"
  "navigation/PropInProgress")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PropInProgress)))
  "Returns string type for a message object of type 'PropInProgress"
  "navigation/PropInProgress")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PropInProgress>)))
  "Returns md5sum for a message object of type '<PropInProgress>"
  "d6c33540b8c16df4f5cfffc348148909")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PropInProgress)))
  "Returns md5sum for a message object of type 'PropInProgress"
  "d6c33540b8c16df4f5cfffc348148909")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PropInProgress>)))
  "Returns full string definition for message of type '<PropInProgress>"
  (cl:format cl:nil "string prop_type~%float32 theta_1~%float32 theta_2~%float32 closest_pnt_dist~%float32 closest_pnt_angle~%geographic_msgs/GeoPoint prop_coords~%~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PropInProgress)))
  "Returns full string definition for message of type 'PropInProgress"
  (cl:format cl:nil "string prop_type~%float32 theta_1~%float32 theta_2~%float32 closest_pnt_dist~%float32 closest_pnt_angle~%geographic_msgs/GeoPoint prop_coords~%~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PropInProgress>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prop_type))
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'prop_coords))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PropInProgress>))
  "Converts a ROS message object to a list"
  (cl:list 'PropInProgress
    (cl:cons ':prop_type (prop_type msg))
    (cl:cons ':theta_1 (theta_1 msg))
    (cl:cons ':theta_2 (theta_2 msg))
    (cl:cons ':closest_pnt_dist (closest_pnt_dist msg))
    (cl:cons ':closest_pnt_angle (closest_pnt_angle msg))
    (cl:cons ':prop_coords (prop_coords msg))
))
