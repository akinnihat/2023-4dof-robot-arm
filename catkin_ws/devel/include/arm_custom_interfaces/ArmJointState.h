// Generated by gencpp from file arm_custom_interfaces/ArmJointState.msg
// DO NOT EDIT!


#ifndef ARM_CUSTOM_INTERFACES_MESSAGE_ARMJOINTSTATE_H
#define ARM_CUSTOM_INTERFACES_MESSAGE_ARMJOINTSTATE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_custom_interfaces
{
template <class ContainerAllocator>
struct ArmJointState_
{
  typedef ArmJointState_<ContainerAllocator> Type;

  ArmJointState_()
    : position_d1(0.0)
    , position_d2(0.0)
    , position_d3(0.0)
    , position_d4(0.0)
    , is_gripper_active(false)  {
    }
  ArmJointState_(const ContainerAllocator& _alloc)
    : position_d1(0.0)
    , position_d2(0.0)
    , position_d3(0.0)
    , position_d4(0.0)
    , is_gripper_active(false)  {
  (void)_alloc;
    }



   typedef double _position_d1_type;
  _position_d1_type position_d1;

   typedef double _position_d2_type;
  _position_d2_type position_d2;

   typedef double _position_d3_type;
  _position_d3_type position_d3;

   typedef double _position_d4_type;
  _position_d4_type position_d4;

   typedef uint8_t _is_gripper_active_type;
  _is_gripper_active_type is_gripper_active;





  typedef boost::shared_ptr< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> const> ConstPtr;

}; // struct ArmJointState_

typedef ::arm_custom_interfaces::ArmJointState_<std::allocator<void> > ArmJointState;

typedef boost::shared_ptr< ::arm_custom_interfaces::ArmJointState > ArmJointStatePtr;
typedef boost::shared_ptr< ::arm_custom_interfaces::ArmJointState const> ArmJointStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator1> & lhs, const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator2> & rhs)
{
  return lhs.position_d1 == rhs.position_d1 &&
    lhs.position_d2 == rhs.position_d2 &&
    lhs.position_d3 == rhs.position_d3 &&
    lhs.position_d4 == rhs.position_d4 &&
    lhs.is_gripper_active == rhs.is_gripper_active;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator1> & lhs, const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_custom_interfaces

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1e666d4870913f5d3bf914fa28fa41a7";
  }

  static const char* value(const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1e666d4870913f5dULL;
  static const uint64_t static_value2 = 0x3bf914fa28fa41a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_custom_interfaces/ArmJointState";
  }

  static const char* value(const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 position_d1\n"
"float64 position_d2\n"
"float64 position_d3\n"
"float64 position_d4\n"
"bool is_gripper_active\n"
;
  }

  static const char* value(const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position_d1);
      stream.next(m.position_d2);
      stream.next(m.position_d3);
      stream.next(m.position_d4);
      stream.next(m.is_gripper_active);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmJointState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_custom_interfaces::ArmJointState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_custom_interfaces::ArmJointState_<ContainerAllocator>& v)
  {
    s << indent << "position_d1: ";
    Printer<double>::stream(s, indent + "  ", v.position_d1);
    s << indent << "position_d2: ";
    Printer<double>::stream(s, indent + "  ", v.position_d2);
    s << indent << "position_d3: ";
    Printer<double>::stream(s, indent + "  ", v.position_d3);
    s << indent << "position_d4: ";
    Printer<double>::stream(s, indent + "  ", v.position_d4);
    s << indent << "is_gripper_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_gripper_active);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_CUSTOM_INTERFACES_MESSAGE_ARMJOINTSTATE_H
