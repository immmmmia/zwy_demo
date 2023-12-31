// Generated by gencpp from file t4ac_msgs/DbWCommand.msg
// DO NOT EDIT!


#ifndef T4AC_MSGS_MESSAGE_DBWCOMMAND_H
#define T4AC_MSGS_MESSAGE_DBWCOMMAND_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace t4ac_msgs
{
template <class ContainerAllocator>
struct DbWCommand_
{
  typedef DbWCommand_<ContainerAllocator> Type;

  DbWCommand_()
    : header()
    , steering_wheel_angle(0)
    , drive_wheel_velocity(0)  {
    }
  DbWCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steering_wheel_angle(0)
    , drive_wheel_velocity(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _steering_wheel_angle_type;
  _steering_wheel_angle_type steering_wheel_angle;

   typedef int32_t _drive_wheel_velocity_type;
  _drive_wheel_velocity_type drive_wheel_velocity;





  typedef boost::shared_ptr< ::t4ac_msgs::DbWCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::t4ac_msgs::DbWCommand_<ContainerAllocator> const> ConstPtr;

}; // struct DbWCommand_

typedef ::t4ac_msgs::DbWCommand_<std::allocator<void> > DbWCommand;

typedef boost::shared_ptr< ::t4ac_msgs::DbWCommand > DbWCommandPtr;
typedef boost::shared_ptr< ::t4ac_msgs::DbWCommand const> DbWCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::t4ac_msgs::DbWCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::t4ac_msgs::DbWCommand_<ContainerAllocator1> & lhs, const ::t4ac_msgs::DbWCommand_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.steering_wheel_angle == rhs.steering_wheel_angle &&
    lhs.drive_wheel_velocity == rhs.drive_wheel_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::t4ac_msgs::DbWCommand_<ContainerAllocator1> & lhs, const ::t4ac_msgs::DbWCommand_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace t4ac_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::DbWCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::DbWCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::DbWCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "830e29ecfc231fdd577b637ca7bbb417";
  }

  static const char* value(const ::t4ac_msgs::DbWCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x830e29ecfc231fddULL;
  static const uint64_t static_value2 = 0x577b637ca7bbb417ULL;
};

template<class ContainerAllocator>
struct DataType< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "t4ac_msgs/DbWCommand";
  }

  static const char* value(const ::t4ac_msgs::DbWCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Creado por Elena López Guillén\n"
"## Ángulo del volante en grados y velocidad de la rueda en grados/s. Valores enteros\n"
"## para enviar a través de bus can a la ECU\n"
"\n"
"\n"
"Header header\n"
"int32 steering_wheel_angle      # angulo del volante en grados. Positivo hacia la izda.\n"
"int32 drive_wheel_velocity 	# velocidad de la rueda en grados/s. Positiva hacia adelante.\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::t4ac_msgs::DbWCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steering_wheel_angle);
      stream.next(m.drive_wheel_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DbWCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::t4ac_msgs::DbWCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::t4ac_msgs::DbWCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steering_wheel_angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.steering_wheel_angle);
    s << indent << "drive_wheel_velocity: ";
    Printer<int32_t>::stream(s, indent + "  ", v.drive_wheel_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // T4AC_MSGS_MESSAGE_DBWCOMMAND_H
