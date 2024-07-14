#include <ros.h>
#include <Arduino.h>
#include <arm_custom_interfaces/ArmJointState.h>
#include <AccelStepper.h>
#include <MultiStepper.h>
#include <Servo.h>


const float rad_to_deg_to_stp = 200/PI;  //pi*0.9

int step_1 = 0;
int step_2_1 = 0;
int step_2_2 = 0;
int step_3 = 0;
int degree = 0;

AccelStepper stepper_1(AccelStepper::FULL2WIRE, 2, 3);
AccelStepper stepper_2_1(AccelStepper::FULL2WIRE, 4, 5);
AccelStepper stepper_2_2(AccelStepper::FULL2WIRE, 6, 7);
AccelStepper stepper_3(AccelStepper::FULL2WIRE, 8, 9);
MultiStepper steppers;

Servo servo_d4;
Servo gripper;

bool is_gripper_active = false;
bool new_state = false;
int motor_steps[4] = {0, 0, 0, 0};
ros::NodeHandle nh;

void callback_gripper(const arm_custom_interfaces::ArmJointState& grpr_cmds)
{
  is_gripper_active = grpr_cmds.is_gripper_active;
}

void callback_arm(const arm_custom_interfaces::ArmJointState& arm_cmds)
{
  new_state = true;
  motor_steps[0] = 6.2*(arm_cmds.position_d1 * rad_to_deg_to_stp);  // Radian >> Degree >> Step (1 Step = 1.8 Degree)
  motor_steps[1] = arm_cmds.position_d2 * rad_to_deg_to_stp;
  motor_steps[2] = 19*(arm_cmds.position_d3 * rad_to_deg_to_stp);
  motor_steps[3] = arm_cmds.position_d4 * rad_to_deg_to_stp;
  degree = arm_cmds.position_d4 * (180/PI);
  //is_gripper_active = arm_cmds.is_gripper_active;

  //motor_steps[0] = 264;  // Radian >> Degree >> Step (1 Step = 1.8 Degree)
  //motor_steps[2] = 0;

}

ros::Subscriber<arm_custom_interfaces::ArmJointState> arm_sub("joint_steps", &callback_arm);
ros::Subscriber<arm_custom_interfaces::ArmJointState> gripper_sub("gripper_activation", &callback_gripper); 

void setup() {
  
  nh.getHardware()->setBaud(115200);
  nh.initNode();
  nh.subscribe(arm_sub);
  nh.subscribe(gripper_sub);


  stepper_1.setMaxSpeed(200.0);
  stepper_1.setAcceleration(100.0);

  stepper_2_1.setMaxSpeed(0.0);
  stepper_2_1.setAcceleration(0.0);

  stepper_2_2.setMaxSpeed(0.0);
  stepper_2_2.setAcceleration(0.0);

  stepper_3.setMaxSpeed(200.0);
  stepper_3.setAcceleration(75.0);

  steppers.addStepper(stepper_1);
  //steppers.addStepper(stepper_2_1);
  //steppers.addStepper(stepper_2_2);
  steppers.addStepper(stepper_3);

  servo_d4.attach(10);
  gripper.attach(11);
  //Serial.begin(9600);
  gripper.write(0);


}

void loop() {


  if (new_state == true) 
  {
    
    long int to_motors[2] = {motor_steps[0], -motor_steps[2]};

    int last_p1 = motor_steps[0];
    //stepper_1.moveTo(-motor_steps[0]);

    //stepper_1.run();
    //stepper_3.run();
    steppers.moveTo(to_motors);

    nh.spinOnce();
    //steppers.run();
    steppers.runSpeedToPosition(); 
    
    //servo_d4.write(degree);


  }

  if (is_gripper_active == true)
  {
    gripper.write(180);
  } else { gripper.write(0); }

  new_state = false; 
  nh.spinOnce();
  delay(1);

}
