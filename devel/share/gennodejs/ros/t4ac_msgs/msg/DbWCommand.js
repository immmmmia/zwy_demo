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

class DbWCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steering_wheel_angle = null;
      this.drive_wheel_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('steering_wheel_angle')) {
        this.steering_wheel_angle = initObj.steering_wheel_angle
      }
      else {
        this.steering_wheel_angle = 0;
      }
      if (initObj.hasOwnProperty('drive_wheel_velocity')) {
        this.drive_wheel_velocity = initObj.drive_wheel_velocity
      }
      else {
        this.drive_wheel_velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DbWCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steering_wheel_angle]
    bufferOffset = _serializer.int32(obj.steering_wheel_angle, buffer, bufferOffset);
    // Serialize message field [drive_wheel_velocity]
    bufferOffset = _serializer.int32(obj.drive_wheel_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DbWCommand
    let len;
    let data = new DbWCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_angle]
    data.steering_wheel_angle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drive_wheel_velocity]
    data.drive_wheel_velocity = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 't4ac_msgs/DbWCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '830e29ecfc231fdd577b637ca7bbb417';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Creado por Elena López Guillén
    ## Ángulo del volante en grados y velocidad de la rueda en grados/s. Valores enteros
    ## para enviar a través de bus can a la ECU
    
    
    Header header
    int32 steering_wheel_angle      # angulo del volante en grados. Positivo hacia la izda.
    int32 drive_wheel_velocity 	# velocidad de la rueda en grados/s. Positiva hacia adelante.
    
    
    
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
    const resolved = new DbWCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steering_wheel_angle !== undefined) {
      resolved.steering_wheel_angle = msg.steering_wheel_angle;
    }
    else {
      resolved.steering_wheel_angle = 0
    }

    if (msg.drive_wheel_velocity !== undefined) {
      resolved.drive_wheel_velocity = msg.drive_wheel_velocity;
    }
    else {
      resolved.drive_wheel_velocity = 0
    }

    return resolved;
    }
};

module.exports = DbWCommand;
