#ifndef ARM_HARDWARE_INTERFACE_HPP
#define ARM_HARDWARE_INTERFACE_HPP

#include "ros/ros.h"
#include "sensor_msgs/JointState.h"
#include "moveit_msgs/ExecuteTrajectoryActionGoal.h"
#include "arm_custom_interfaces/ArmJointState.h"


class ArmHardware
{

private:

    ros::NodeHandle nh;
    ros::Subscriber sub_moveit;
    ros::Publisher pub_steps;

public:

    ArmHardware(ros::NodeHandle& nh);    

    void callback_joint_states(const sensor_msgs::JointState& joint_state_msg);

    ~ArmHardware();  


};


#endif