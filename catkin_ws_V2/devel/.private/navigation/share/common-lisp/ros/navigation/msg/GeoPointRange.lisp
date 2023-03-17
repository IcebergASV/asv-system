; Auto-generated. Do not edit!


(cl:in-package navigation-msg)


;//! \htmlinclude GeoPointRange.msg.html

(cl:defclass <GeoPointRange> (roslisp-msg-protocol:ros-message)
  ((min_latitude
    :reader min_latitude
    :initarg :min_latitude
    :type cl:float
    :initform 0.0)
   (max_latitude
    :reader max_latitude
    :initarg :max_latitude
    :type cl:float
    :initform 0.0)
   (min_longitude
    :reader min_longitude
    :initarg :min_longitude
    :type cl:float
    :initform 0.0)
   (max_longitude
    :reader max_longitude
    :initarg :max_longitude
    :type cl:float
    :initform 0.0)
   (min_altitude
    :reader min_altitude
    :initarg :min_altitude
    :type cl:float
    :initform 0.0)
   (max_altitude
    :reader max_altitude
    :initarg :max_altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass GeoPointRange (<GeoPointRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeoPointRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeoPointRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navigation-msg:<GeoPointRange> is deprecated: use navigation-msg:GeoPointRange instead.")))

(cl:ensure-generic-function 'min_latitude-val :lambda-list '(m))
(cl:defmethod min_latitude-val ((m <GeoPointRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:min_latitude-val is deprecated.  Use navigation-msg:min_latitude instead.")
  (min_latitude m))

(cl:ensure-generic-function 'max_latitude-val :lambda-list '(m))
(cl:defmethod max_latitude-val ((m <GeoPointRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:max_latitude-val is deprecated.  Use navigation-msg:max_latitude instead.")
  (max_latitude m))

(cl:ensure-generic-function 'min_longitude-val :lambda-list '(m))
(cl:defmethod min_longitude-val ((m <GeoPointRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:min_longitude-val is deprecated.  Use navigation-msg:min_longitude instead.")
  (min_longitude m))

(cl:ensure-generic-function 'max_longitude-val :lambda-list '(m))
(cl:defmethod max_longitude-val ((m <GeoPointRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:max_longitude-val is deprecated.  Use navigation-msg:max_longitude instead.")
  (max_longitude m))

(cl:ensure-generic-function 'min_altitude-val :lambda-list '(m))
(cl:defmethod min_altitude-val ((m <GeoPointRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:min_altitude-val is deprecated.  Use navigation-msg:min_altitude instead.")
  (min_altitude m))

(cl:ensure-generic-function 'max_altitude-val :lambda-list '(m))
(cl:defmethod max_altitude-val ((m <GeoPointRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navigation-msg:max_altitude-val is deprecated.  Use navigation-msg:max_altitude instead.")
  (max_altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeoPointRange>) ostream)
  "Serializes a message object of type '<GeoPointRange>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeoPointRange>) istream)
  "Deserializes a message object of type '<GeoPointRange>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_altitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_altitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeoPointRange>)))
  "Returns string type for a message object of type '<GeoPointRange>"
  "navigation/GeoPointRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeoPointRange)))
  "Returns string type for a message object of type 'GeoPointRange"
  "navigation/GeoPointRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeoPointRange>)))
  "Returns md5sum for a message object of type '<GeoPointRange>"
  "8a4b85d7b91a11f0867d2e73a2c8f009")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeoPointRange)))
  "Returns md5sum for a message object of type 'GeoPointRange"
  "8a4b85d7b91a11f0867d2e73a2c8f009")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeoPointRange>)))
  "Returns full string definition for message of type '<GeoPointRange>"
  (cl:format cl:nil "float64 min_latitude~%float64 max_latitude~%float64 min_longitude~%float64 max_longitude~%float64 min_altitude~%float64 max_altitude ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeoPointRange)))
  "Returns full string definition for message of type 'GeoPointRange"
  (cl:format cl:nil "float64 min_latitude~%float64 max_latitude~%float64 min_longitude~%float64 max_longitude~%float64 min_altitude~%float64 max_altitude ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeoPointRange>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeoPointRange>))
  "Converts a ROS message object to a list"
  (cl:list 'GeoPointRange
    (cl:cons ':min_latitude (min_latitude msg))
    (cl:cons ':max_latitude (max_latitude msg))
    (cl:cons ':min_longitude (min_longitude msg))
    (cl:cons ':max_longitude (max_longitude msg))
    (cl:cons ':min_altitude (min_altitude msg))
    (cl:cons ':max_altitude (max_altitude msg))
))
