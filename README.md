# 4 DoF Robot Arm (June 2023)
<img src="https://github.com/user-attachments/assets/20513b2f-db65-467f-bff3-849c1272d893" width="384">

This is a project I made back in 2023, the last year of my undergraduate education, where I designed, constructed and developed control software of a robotic arm with 4 degrees of freedom.

## Design and Construction
<img src="https://github.com/user-attachments/assets/aaf3e7f3-8749-45de-a4d1-966766293bd6" width="384">

The design of the robot arm was made with Fusion360 (except the gripper, I found it on the internet) and converted to URDF format with the help of [fusion2urdf](https://github.com/syuntoku14/fusion2urdf).
In its construction aluminium with 2mm thickness and 3D printing (PLA, yellow parts in the image above) were used.

## Circuit Design and Electronics
<img src="https://github.com/user-attachments/assets/11c64485-1c19-4a8c-9515-d5ce451eaa8c" width="384">

In the electronics of the robot arm:
  - 4 NEMA 17 stepper motors,
  - 4 A4988 stepper motor drivers,
  - 4 100V 100μF capacitors,
  - 2 MG995 servo motors (for gripper control),
  - A power distribution board with 12V and 5V outputs,
  - A 14.8V Li-Po baterry, 
  - Arduino UNO,
  - A laptop was used as the main control computer (originally a Jetson NANO was planned).

## Software and Control
<img src="https://github.com/user-attachments/assets/61f9dd55-5df7-4b46-93c7-77014e63f536" width="384">

[ROS Noetic](http://wiki.ros.org/noetic) was used on the main computer, [RViz](http://wiki.ros.org/rviz) was used as the control interface and [MoveIt!](https://moveit.ros.org/) was used for kinematics and motion planning. In Arduino, [AccelStepper](https://github.com/waspinator/AccelStepper) was used for stepper motor control and [ros_lib](http://wiki.ros.org/rosserial_arduino/Tutorials/Arduino%20IDE%20Setup) (rosserial) was used for serial communication with ROS.

Installation of ROS Noetic:
```
sudo apt install ros-noetic-desktop
```
Installation of catkin and related build tools:
```
sudo apt install ros-noetic-catkin pyhton3-catkin-tools python3-osrf-pycommon
```
Installation of MoveIt!:
```
sudo apt install ros-noetic-moveit
```
Installation of rosserial for communication between ROS with Arduino over serial (see [ros_lib](http://wiki.ros.org/rosserial_arduino/Tutorials/Arduino%20IDE%20Setup) for Arduino IDE setup for rosserial):
```
sudo apt install ros-noetic-rosserial
sudo apt install ros-noetic-rosserial-arduino
```
Creation of catkin workspace:
```
mkdir catkin-ws
```
Launch of MoveIt! Setup Assistant for robot arm configuration:
```
roslaunch moveit_setup-assistant setup_assistant.launch
```
<img src="https://github.com/user-attachments/assets/99d5055f-556a-4194-812f-e61851d97796" width="384">

After configuration of the robot arm, launch of MoveIt! move_group, robot arm hardware interface and serial comminication with Arduino:
```
roslaunch arm_moveit_config move_group.launch
rosrun arm_hardware arm_hardware_node
rosrun rosserial_python serial_node.py _port:=/dev_ttyUSB0 _baud:=115200
```
<img src="https://github.com/user-attachments/assets/a36d84d8-d582-4cf7-8d84-0f455b69df8a" width="384">

## Pick and Place
<img src="https://github.com/user-attachments/assets/624f2628-760b-4fc2-ad30-154f14537334" width="384">

## Additional Notes
Some of the flaws made during the development of the project and the points that could have been done better are briefly as follows:
  - Incorrect load capacity calculation and kinematics calculation at the beginning
  - Non-functional 2nd DoF due to design and manufacturing defects
  - No precise control of stepper motors due to lack of feedback mechanism
