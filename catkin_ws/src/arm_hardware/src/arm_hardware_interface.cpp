#include "../include/arm_hardware_interface.hpp"


ArmHardware::ArmHardware(ros::NodeHandle& nh)
{
  sub_moveit = nh.subscribe("/move_group/fake_controller_joint_states", 1000, &ArmHardware::callback_joint_states, this);
  pub_steps = nh.advertise<arm_custom_interfaces::ArmJointState>("joint_steps", 50);

}

ArmHardware::~ArmHardware()
{

} 

void ArmHardware::callback_joint_states(const sensor_msgs::JointState& joint_state_msg)
{
  const auto positionCmds = joint_state_msg.position;
  arm_custom_interfaces::ArmJointState positionCmdsArr;

  positionCmdsArr.position_d1 = positionCmds[0];
  positionCmdsArr.position_d2 = 0;
  positionCmdsArr.position_d3 = positionCmds[1];
  positionCmdsArr.position_d4 = positionCmds[2];

  pub_steps.publish(positionCmdsArr);
  ROS_INFO_STREAM("New joint states have been published.");

}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "arm_hardware_node");
  ros::NodeHandle nh;
  ROS_INFO_STREAM("Ready.");
  
  ros::AsyncSpinner spinner(2);
  spinner.start();
  ArmHardware armHardware(nh);
  ros::waitForShutdown();
  
  return 0;
}