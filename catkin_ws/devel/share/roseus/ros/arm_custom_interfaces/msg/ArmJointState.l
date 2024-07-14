;; Auto-generated. Do not edit!


(when (boundp 'arm_custom_interfaces::ArmJointState)
  (if (not (find-package "ARM_CUSTOM_INTERFACES"))
    (make-package "ARM_CUSTOM_INTERFACES"))
  (shadow 'ArmJointState (find-package "ARM_CUSTOM_INTERFACES")))
(unless (find-package "ARM_CUSTOM_INTERFACES::ARMJOINTSTATE")
  (make-package "ARM_CUSTOM_INTERFACES::ARMJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ArmJointState.msg.html


(defclass arm_custom_interfaces::ArmJointState
  :super ros::object
  :slots (_position_d1 _position_d2 _position_d3 _position_d4 _is_gripper_active ))

(defmethod arm_custom_interfaces::ArmJointState
  (:init
   (&key
    ((:position_d1 __position_d1) 0.0)
    ((:position_d2 __position_d2) 0.0)
    ((:position_d3 __position_d3) 0.0)
    ((:position_d4 __position_d4) 0.0)
    ((:is_gripper_active __is_gripper_active) nil)
    )
   (send-super :init)
   (setq _position_d1 (float __position_d1))
   (setq _position_d2 (float __position_d2))
   (setq _position_d3 (float __position_d3))
   (setq _position_d4 (float __position_d4))
   (setq _is_gripper_active __is_gripper_active)
   self)
  (:position_d1
   (&optional __position_d1)
   (if __position_d1 (setq _position_d1 __position_d1)) _position_d1)
  (:position_d2
   (&optional __position_d2)
   (if __position_d2 (setq _position_d2 __position_d2)) _position_d2)
  (:position_d3
   (&optional __position_d3)
   (if __position_d3 (setq _position_d3 __position_d3)) _position_d3)
  (:position_d4
   (&optional __position_d4)
   (if __position_d4 (setq _position_d4 __position_d4)) _position_d4)
  (:is_gripper_active
   (&optional (__is_gripper_active :null))
   (if (not (eq __is_gripper_active :null)) (setq _is_gripper_active __is_gripper_active)) _is_gripper_active)
  (:serialization-length
   ()
   (+
    ;; float64 _position_d1
    8
    ;; float64 _position_d2
    8
    ;; float64 _position_d3
    8
    ;; float64 _position_d4
    8
    ;; bool _is_gripper_active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _position_d1
       (sys::poke _position_d1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_d2
       (sys::poke _position_d2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_d3
       (sys::poke _position_d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_d4
       (sys::poke _position_d4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_gripper_active
       (if _is_gripper_active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _position_d1
     (setq _position_d1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_d2
     (setq _position_d2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_d3
     (setq _position_d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_d4
     (setq _position_d4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_gripper_active
     (setq _is_gripper_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get arm_custom_interfaces::ArmJointState :md5sum-) "1e666d4870913f5d3bf914fa28fa41a7")
(setf (get arm_custom_interfaces::ArmJointState :datatype-) "arm_custom_interfaces/ArmJointState")
(setf (get arm_custom_interfaces::ArmJointState :definition-)
      "float64 position_d1
float64 position_d2
float64 position_d3
float64 position_d4
bool is_gripper_active
")



(provide :arm_custom_interfaces/ArmJointState "1e666d4870913f5d3bf914fa28fa41a7")


