
(cl:in-package :asdf)

(defsystem "arm_custom_interfaces-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmJointState" :depends-on ("_package_ArmJointState"))
    (:file "_package_ArmJointState" :depends-on ("_package"))
  ))