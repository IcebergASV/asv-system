// Auto-generated. Do not edit!

// (in-package navigation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GeoPointRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min_latitude = null;
      this.max_latitude = null;
      this.min_longitude = null;
      this.max_longitude = null;
      this.min_altitude = null;
      this.max_altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('min_latitude')) {
        this.min_latitude = initObj.min_latitude
      }
      else {
        this.min_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('max_latitude')) {
        this.max_latitude = initObj.max_latitude
      }
      else {
        this.max_latitude = 0.0;
      }
      if (initObj.hasOwnProperty('min_longitude')) {
        this.min_longitude = initObj.min_longitude
      }
      else {
        this.min_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('max_longitude')) {
        this.max_longitude = initObj.max_longitude
      }
      else {
        this.max_longitude = 0.0;
      }
      if (initObj.hasOwnProperty('min_altitude')) {
        this.min_altitude = initObj.min_altitude
      }
      else {
        this.min_altitude = 0.0;
      }
      if (initObj.hasOwnProperty('max_altitude')) {
        this.max_altitude = initObj.max_altitude
      }
      else {
        this.max_altitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GeoPointRange
    // Serialize message field [min_latitude]
    bufferOffset = _serializer.float64(obj.min_latitude, buffer, bufferOffset);
    // Serialize message field [max_latitude]
    bufferOffset = _serializer.float64(obj.max_latitude, buffer, bufferOffset);
    // Serialize message field [min_longitude]
    bufferOffset = _serializer.float64(obj.min_longitude, buffer, bufferOffset);
    // Serialize message field [max_longitude]
    bufferOffset = _serializer.float64(obj.max_longitude, buffer, bufferOffset);
    // Serialize message field [min_altitude]
    bufferOffset = _serializer.float64(obj.min_altitude, buffer, bufferOffset);
    // Serialize message field [max_altitude]
    bufferOffset = _serializer.float64(obj.max_altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GeoPointRange
    let len;
    let data = new GeoPointRange(null);
    // Deserialize message field [min_latitude]
    data.min_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_latitude]
    data.max_latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_longitude]
    data.min_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_longitude]
    data.max_longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_altitude]
    data.min_altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_altitude]
    data.max_altitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation/GeoPointRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a4b85d7b91a11f0867d2e73a2c8f009';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 min_latitude
    float64 max_latitude
    float64 min_longitude
    float64 max_longitude
    float64 min_altitude
    float64 max_altitude 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GeoPointRange(null);
    if (msg.min_latitude !== undefined) {
      resolved.min_latitude = msg.min_latitude;
    }
    else {
      resolved.min_latitude = 0.0
    }

    if (msg.max_latitude !== undefined) {
      resolved.max_latitude = msg.max_latitude;
    }
    else {
      resolved.max_latitude = 0.0
    }

    if (msg.min_longitude !== undefined) {
      resolved.min_longitude = msg.min_longitude;
    }
    else {
      resolved.min_longitude = 0.0
    }

    if (msg.max_longitude !== undefined) {
      resolved.max_longitude = msg.max_longitude;
    }
    else {
      resolved.max_longitude = 0.0
    }

    if (msg.min_altitude !== undefined) {
      resolved.min_altitude = msg.min_altitude;
    }
    else {
      resolved.min_altitude = 0.0
    }

    if (msg.max_altitude !== undefined) {
      resolved.max_altitude = msg.max_altitude;
    }
    else {
      resolved.max_altitude = 0.0
    }

    return resolved;
    }
};

module.exports = GeoPointRange;
