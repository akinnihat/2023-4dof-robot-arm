// Auto-generated. Do not edit!

// (in-package arm_custom_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ArmJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_d1 = null;
      this.position_d2 = null;
      this.position_d3 = null;
      this.position_d4 = null;
      this.is_gripper_active = null;
    }
    else {
      if (initObj.hasOwnProperty('position_d1')) {
        this.position_d1 = initObj.position_d1
      }
      else {
        this.position_d1 = 0.0;
      }
      if (initObj.hasOwnProperty('position_d2')) {
        this.position_d2 = initObj.position_d2
      }
      else {
        this.position_d2 = 0.0;
      }
      if (initObj.hasOwnProperty('position_d3')) {
        this.position_d3 = initObj.position_d3
      }
      else {
        this.position_d3 = 0.0;
      }
      if (initObj.hasOwnProperty('position_d4')) {
        this.position_d4 = initObj.position_d4
      }
      else {
        this.position_d4 = 0.0;
      }
      if (initObj.hasOwnProperty('is_gripper_active')) {
        this.is_gripper_active = initObj.is_gripper_active
      }
      else {
        this.is_gripper_active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmJointState
    // Serialize message field [position_d1]
    bufferOffset = _serializer.float64(obj.position_d1, buffer, bufferOffset);
    // Serialize message field [position_d2]
    bufferOffset = _serializer.float64(obj.position_d2, buffer, bufferOffset);
    // Serialize message field [position_d3]
    bufferOffset = _serializer.float64(obj.position_d3, buffer, bufferOffset);
    // Serialize message field [position_d4]
    bufferOffset = _serializer.float64(obj.position_d4, buffer, bufferOffset);
    // Serialize message field [is_gripper_active]
    bufferOffset = _serializer.bool(obj.is_gripper_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmJointState
    let len;
    let data = new ArmJointState(null);
    // Deserialize message field [position_d1]
    data.position_d1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_d2]
    data.position_d2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_d3]
    data.position_d3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_d4]
    data.position_d4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_gripper_active]
    data.is_gripper_active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_custom_interfaces/ArmJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e666d4870913f5d3bf914fa28fa41a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 position_d1
    float64 position_d2
    float64 position_d3
    float64 position_d4
    bool is_gripper_active
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmJointState(null);
    if (msg.position_d1 !== undefined) {
      resolved.position_d1 = msg.position_d1;
    }
    else {
      resolved.position_d1 = 0.0
    }

    if (msg.position_d2 !== undefined) {
      resolved.position_d2 = msg.position_d2;
    }
    else {
      resolved.position_d2 = 0.0
    }

    if (msg.position_d3 !== undefined) {
      resolved.position_d3 = msg.position_d3;
    }
    else {
      resolved.position_d3 = 0.0
    }

    if (msg.position_d4 !== undefined) {
      resolved.position_d4 = msg.position_d4;
    }
    else {
      resolved.position_d4 = 0.0
    }

    if (msg.is_gripper_active !== undefined) {
      resolved.is_gripper_active = msg.is_gripper_active;
    }
    else {
      resolved.is_gripper_active = false
    }

    return resolved;
    }
};

module.exports = ArmJointState;
