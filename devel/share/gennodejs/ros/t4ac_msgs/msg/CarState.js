// Auto-generated. Do not edit!

// (in-package t4ac_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.manual_mode = null;
      this.ready_mode = null;
      this.automatic_mode = null;
      this.actuated_brake = null;
      this.actuated_wheel = null;
      this.reverse = null;
      this.forward = null;
      this.parked = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('manual_mode')) {
        this.manual_mode = initObj.manual_mode
      }
      else {
        this.manual_mode = false;
      }
      if (initObj.hasOwnProperty('ready_mode')) {
        this.ready_mode = initObj.ready_mode
      }
      else {
        this.ready_mode = false;
      }
      if (initObj.hasOwnProperty('automatic_mode')) {
        this.automatic_mode = initObj.automatic_mode
      }
      else {
        this.automatic_mode = false;
      }
      if (initObj.hasOwnProperty('actuated_brake')) {
        this.actuated_brake = initObj.actuated_brake
      }
      else {
        this.actuated_brake = false;
      }
      if (initObj.hasOwnProperty('actuated_wheel')) {
        this.actuated_wheel = initObj.actuated_wheel
      }
      else {
        this.actuated_wheel = false;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = false;
      }
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = false;
      }
      if (initObj.hasOwnProperty('parked')) {
        this.parked = initObj.parked
      }
      else {
        this.parked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [manual_mode]
    bufferOffset = _serializer.bool(obj.manual_mode, buffer, bufferOffset);
    // Serialize message field [ready_mode]
    bufferOffset = _serializer.bool(obj.ready_mode, buffer, bufferOffset);
    // Serialize message field [automatic_mode]
    bufferOffset = _serializer.bool(obj.automatic_mode, buffer, bufferOffset);
    // Serialize message field [actuated_brake]
    bufferOffset = _serializer.bool(obj.actuated_brake, buffer, bufferOffset);
    // Serialize message field [actuated_wheel]
    bufferOffset = _serializer.bool(obj.actuated_wheel, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.bool(obj.reverse, buffer, bufferOffset);
    // Serialize message field [forward]
    bufferOffset = _serializer.bool(obj.forward, buffer, bufferOffset);
    // Serialize message field [parked]
    bufferOffset = _serializer.bool(obj.parked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarState
    let len;
    let data = new CarState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [manual_mode]
    data.manual_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ready_mode]
    data.ready_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [automatic_mode]
    data.automatic_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [actuated_brake]
    data.actuated_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [actuated_wheel]
    data.actuated_wheel = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward]
    data.forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parked]
    data.parked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 't4ac_msgs/CarState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6104b11829402233723a0180a9d22973';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Created by J Felipe Arango - UAH - Robesafe
    
    Header header
    bool manual_mode
    bool ready_mode
    bool automatic_mode
    bool actuated_brake
    bool actuated_wheel
    bool reverse
    bool forward
    bool parked
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.manual_mode !== undefined) {
      resolved.manual_mode = msg.manual_mode;
    }
    else {
      resolved.manual_mode = false
    }

    if (msg.ready_mode !== undefined) {
      resolved.ready_mode = msg.ready_mode;
    }
    else {
      resolved.ready_mode = false
    }

    if (msg.automatic_mode !== undefined) {
      resolved.automatic_mode = msg.automatic_mode;
    }
    else {
      resolved.automatic_mode = false
    }

    if (msg.actuated_brake !== undefined) {
      resolved.actuated_brake = msg.actuated_brake;
    }
    else {
      resolved.actuated_brake = false
    }

    if (msg.actuated_wheel !== undefined) {
      resolved.actuated_wheel = msg.actuated_wheel;
    }
    else {
      resolved.actuated_wheel = false
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = false
    }

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = false
    }

    if (msg.parked !== undefined) {
      resolved.parked = msg.parked;
    }
    else {
      resolved.parked = false
    }

    return resolved;
    }
};

module.exports = CarState;
