// Auto-generated. Do not edit!

// (in-package navigation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geographic_msgs = _finder('geographic_msgs');

//-----------------------------------------------------------

class PropInProgress {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prop_type = null;
      this.theta_1 = null;
      this.theta_2 = null;
      this.closest_pnt_dist = null;
      this.closest_pnt_angle = null;
      this.prop_coords = null;
    }
    else {
      if (initObj.hasOwnProperty('prop_type')) {
        this.prop_type = initObj.prop_type
      }
      else {
        this.prop_type = '';
      }
      if (initObj.hasOwnProperty('theta_1')) {
        this.theta_1 = initObj.theta_1
      }
      else {
        this.theta_1 = 0.0;
      }
      if (initObj.hasOwnProperty('theta_2')) {
        this.theta_2 = initObj.theta_2
      }
      else {
        this.theta_2 = 0.0;
      }
      if (initObj.hasOwnProperty('closest_pnt_dist')) {
        this.closest_pnt_dist = initObj.closest_pnt_dist
      }
      else {
        this.closest_pnt_dist = 0.0;
      }
      if (initObj.hasOwnProperty('closest_pnt_angle')) {
        this.closest_pnt_angle = initObj.closest_pnt_angle
      }
      else {
        this.closest_pnt_angle = 0.0;
      }
      if (initObj.hasOwnProperty('prop_coords')) {
        this.prop_coords = initObj.prop_coords
      }
      else {
        this.prop_coords = new geographic_msgs.msg.GeoPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PropInProgress
    // Serialize message field [prop_type]
    bufferOffset = _serializer.string(obj.prop_type, buffer, bufferOffset);
    // Serialize message field [theta_1]
    bufferOffset = _serializer.float32(obj.theta_1, buffer, bufferOffset);
    // Serialize message field [theta_2]
    bufferOffset = _serializer.float32(obj.theta_2, buffer, bufferOffset);
    // Serialize message field [closest_pnt_dist]
    bufferOffset = _serializer.float32(obj.closest_pnt_dist, buffer, bufferOffset);
    // Serialize message field [closest_pnt_angle]
    bufferOffset = _serializer.float32(obj.closest_pnt_angle, buffer, bufferOffset);
    // Serialize message field [prop_coords]
    bufferOffset = geographic_msgs.msg.GeoPoint.serialize(obj.prop_coords, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PropInProgress
    let len;
    let data = new PropInProgress(null);
    // Deserialize message field [prop_type]
    data.prop_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [theta_1]
    data.theta_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta_2]
    data.theta_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [closest_pnt_dist]
    data.closest_pnt_dist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [closest_pnt_angle]
    data.closest_pnt_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prop_coords]
    data.prop_coords = geographic_msgs.msg.GeoPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.prop_type.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation/PropInProgress';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6c33540b8c16df4f5cfffc348148909';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string prop_type
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PropInProgress(null);
    if (msg.prop_type !== undefined) {
      resolved.prop_type = msg.prop_type;
    }
    else {
      resolved.prop_type = ''
    }

    if (msg.theta_1 !== undefined) {
      resolved.theta_1 = msg.theta_1;
    }
    else {
      resolved.theta_1 = 0.0
    }

    if (msg.theta_2 !== undefined) {
      resolved.theta_2 = msg.theta_2;
    }
    else {
      resolved.theta_2 = 0.0
    }

    if (msg.closest_pnt_dist !== undefined) {
      resolved.closest_pnt_dist = msg.closest_pnt_dist;
    }
    else {
      resolved.closest_pnt_dist = 0.0
    }

    if (msg.closest_pnt_angle !== undefined) {
      resolved.closest_pnt_angle = msg.closest_pnt_angle;
    }
    else {
      resolved.closest_pnt_angle = 0.0
    }

    if (msg.prop_coords !== undefined) {
      resolved.prop_coords = geographic_msgs.msg.GeoPoint.Resolve(msg.prop_coords)
    }
    else {
      resolved.prop_coords = new geographic_msgs.msg.GeoPoint()
    }

    return resolved;
    }
};

module.exports = PropInProgress;
