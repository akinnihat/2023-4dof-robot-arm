; Auto-generated. Do not edit!


(cl:in-package arm_custom_interfaces-msg)


;//! \htmlinclude ArmJointState.msg.html

(cl:defclass <ArmJointState> (roslisp-msg-protocol:ros-message)
  ((position_d1
    :reader position_d1
    :initarg :position_d1
    :type cl:float
    :initform 0.0)
   (position_d2
    :reader position_d2
    :initarg :position_d2
    :type cl:float
    :initform 0.0)
   (position_d3
    :reader position_d3
    :initarg :position_d3
    :type cl:float
    :initform 0.0)
   (position_d4
    :reader position_d4
    :initarg :position_d4
    :type cl:float
    :initform 0.0)
   (is_gripper_active
    :reader is_gripper_active
    :initarg :is_gripper_active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ArmJointState (<ArmJointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmJointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmJointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_custom_interfaces-msg:<ArmJointState> is deprecated: use arm_custom_interfaces-msg:ArmJointState instead.")))

(cl:ensure-generic-function 'position_d1-val :lambda-list '(m))
(cl:defmethod position_d1-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_custom_interfaces-msg:position_d1-val is deprecated.  Use arm_custom_interfaces-msg:position_d1 instead.")
  (position_d1 m))

(cl:ensure-generic-function 'position_d2-val :lambda-list '(m))
(cl:defmethod position_d2-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_custom_interfaces-msg:position_d2-val is deprecated.  Use arm_custom_interfaces-msg:position_d2 instead.")
  (position_d2 m))

(cl:ensure-generic-function 'position_d3-val :lambda-list '(m))
(cl:defmethod position_d3-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_custom_interfaces-msg:position_d3-val is deprecated.  Use arm_custom_interfaces-msg:position_d3 instead.")
  (position_d3 m))

(cl:ensure-generic-function 'position_d4-val :lambda-list '(m))
(cl:defmethod position_d4-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_custom_interfaces-msg:position_d4-val is deprecated.  Use arm_custom_interfaces-msg:position_d4 instead.")
  (position_d4 m))

(cl:ensure-generic-function 'is_gripper_active-val :lambda-list '(m))
(cl:defmethod is_gripper_active-val ((m <ArmJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_custom_interfaces-msg:is_gripper_active-val is deprecated.  Use arm_custom_interfaces-msg:is_gripper_active instead.")
  (is_gripper_active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmJointState>) ostream)
  "Serializes a message object of type '<ArmJointState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_d1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_d2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_d3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'position_d4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_gripper_active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmJointState>) istream)
  "Deserializes a message object of type '<ArmJointState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_d1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_d2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_d3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_d4) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_gripper_active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmJointState>)))
  "Returns string type for a message object of type '<ArmJointState>"
  "arm_custom_interfaces/ArmJointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmJointState)))
  "Returns string type for a message object of type 'ArmJointState"
  "arm_custom_interfaces/ArmJointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmJointState>)))
  "Returns md5sum for a message object of type '<ArmJointState>"
  "1e666d4870913f5d3bf914fa28fa41a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmJointState)))
  "Returns md5sum for a message object of type 'ArmJointState"
  "1e666d4870913f5d3bf914fa28fa41a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmJointState>)))
  "Returns full string definition for message of type '<ArmJointState>"
  (cl:format cl:nil "float64 position_d1~%float64 position_d2~%float64 position_d3~%float64 position_d4~%bool is_gripper_active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmJointState)))
  "Returns full string definition for message of type 'ArmJointState"
  (cl:format cl:nil "float64 position_d1~%float64 position_d2~%float64 position_d3~%float64 position_d4~%bool is_gripper_active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmJointState>))
  (cl:+ 0
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmJointState>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmJointState
    (cl:cons ':position_d1 (position_d1 msg))
    (cl:cons ':position_d2 (position_d2 msg))
    (cl:cons ':position_d3 (position_d3 msg))
    (cl:cons ':position_d4 (position_d4 msg))
    (cl:cons ':is_gripper_active (is_gripper_active msg))
))
