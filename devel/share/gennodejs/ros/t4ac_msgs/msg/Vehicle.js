// Auto-generated. Do not edit!

// (in-package t4ac_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Location = require('./Location.js');
let Waypoint = require('./Waypoint.js');

//-----------------------------------------------------------

class Vehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_id = null;
      this.enter_time = null;
      this.current_waypoint = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_id')) {
        this.vehicle_id = initObj.vehicle_id
      }
      else {
        this.vehicle_id = 0;
      }
      if (initObj.hasOwnProperty('enter_time')) {
        this.enter_time = initObj.enter_time
      }
      else {
        this.enter_time = 0;
      }
      if (initObj.hasOwnProperty('current_waypoint')) {
        this.current_waypoint = initObj.current_waypoint
      }
      else {
        this.current_waypoint = new Location();
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vehicle
    // Serialize message field [vehicle_id]
    bufferOffset = _serializer.int32(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [enter_time]
    bufferOffset = _serializer.int32(obj.enter_time, buffer, bufferOffset);
    // Serialize message field [current_waypoint]
    bufferOffset = Location.serialize(obj.current_waypoint, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = Waypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vehicle
    let len;
    let data = new Vehicle(null);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [enter_time]
    data.enter_time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_waypoint]
    data.current_waypoint = Location.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = Waypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.waypoints.forEach((val) => {
      length += Waypoint.getMessageSize(val);
    });
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 't4ac_msgs/Vehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bb831235a6a75a24b4ee343d565fc99';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vehicle
    # project name t4ac_global_planner_ros
    
    int32 vehicle_id
    int32 enter_time
    # Odometry start_point
    # PoseStamped end_point
    Location current_waypoint
    Waypoint[] waypoints
    
    ================================================================================
    MSG: t4ac_msgs/Location
    # T4ac Project 
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: t4ac_msgs/Waypoint
    # T4ac Project 
    
    Header header
    int32 id
    Transform transform
    int32 road_id
    int32 lane_id
    int32 junction
    float64 s
    float64 lane_width
    string lane_change
    string lane_type
    string right_lane_marking
    string left_lane_marking
    int32 vmax
    string vunit
    int32 nLanes
    int32 lanePosition
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: t4ac_msgs/Transform
    # T4ac Project
    
    Location location
    Rotation rotation
    ================================================================================
    MSG: t4ac_msgs/Rotation
    # T4ac Project 
    
    float64 pitch
    float64 yaw
    float64 roll
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vehicle(null);
    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = msg.vehicle_id;
    }
    else {
      resolved.vehicle_id = 0
    }

    if (msg.enter_time !== undefined) {
      resolved.enter_time = msg.enter_time;
    }
    else {
      resolved.enter_time = 0
    }

    if (msg.current_waypoint !== undefined) {
      resolved.current_waypoint = Location.Resolve(msg.current_waypoint)
    }
    else {
      resolved.current_waypoint = new Location()
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = Waypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = Vehicle;
