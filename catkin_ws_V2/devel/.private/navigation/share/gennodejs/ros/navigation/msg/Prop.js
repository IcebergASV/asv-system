// Auto-generated. Do not edit!

// (in-package navigation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeoPointRange = require('./GeoPointRange.js');
let geographic_msgs = _finder('geographic_msgs');

//-----------------------------------------------------------

class Prop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prop_type = null;
      this.prop_coords = null;
      this.prop_coord_range = null;
    }
    else {
      if (initObj.hasOwnProperty('prop_type')) {
        this.prop_type = initObj.prop_type
      }
      else {
        this.prop_type = '';
      }
      if (initObj.hasOwnProperty('prop_coords')) {
        this.prop_coords = initObj.prop_coords
      }
      else {
        this.prop_coords = new geographic_msgs.msg.GeoPoint();
      }
      if (initObj.hasOwnProperty('prop_coord_range')) {
        this.prop_coord_range = initObj.prop_coord_range
      }
      else {
        this.prop_coord_range = new GeoPointRange();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Prop
    // Serialize message field [prop_type]
    bufferOffset = _serializer.string(obj.prop_type, buffer, bufferOffset);
    // Serialize message field [prop_coords]
    bufferOffset = geographic_msgs.msg.GeoPoint.serialize(obj.prop_coords, buffer, bufferOffset);
    // Serialize message field [prop_coord_range]
    bufferOffset = GeoPointRange.serialize(obj.prop_coord_range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Prop
    let len;
    let data = new Prop(null);
    // Deserialize message field [prop_type]
    data.prop_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [prop_coords]
    data.prop_coords = geographic_msgs.msg.GeoPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [prop_coord_range]
    data.prop_coord_range = GeoPointRange.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.prop_type.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'navigation/Prop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '179b91140665e240f19504a5815eac9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Prop(null);
    if (msg.prop_type !== undefined) {
      resolved.prop_type = msg.prop_type;
    }
    else {
      resolved.prop_type = ''
    }

    if (msg.prop_coords !== undefined) {
      resolved.prop_coords = geographic_msgs.msg.GeoPoint.Resolve(msg.prop_coords)
    }
    else {
      resolved.prop_coords = new geographic_msgs.msg.GeoPoint()
    }

    if (msg.prop_coord_range !== undefined) {
      resolved.prop_coord_range = GeoPointRange.Resolve(msg.prop_coord_range)
    }
    else {
      resolved.prop_coord_range = new GeoPointRange()
    }

    return resolved;
    }
};

module.exports = Prop;
