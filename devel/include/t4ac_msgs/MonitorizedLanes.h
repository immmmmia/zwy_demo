// Generated by gencpp from file t4ac_msgs/MonitorizedLanes.msg
// DO NOT EDIT!


#ifndef T4AC_MSGS_MESSAGE_MONITORIZEDLANES_H
#define T4AC_MSGS_MESSAGE_MONITORIZEDLANES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <t4ac_msgs/Lane.h>

namespace t4ac_msgs
{
template <class ContainerAllocator>
struct MonitorizedLanes_
{
  typedef MonitorizedLanes_<ContainerAllocator> Type;

  MonitorizedLanes_()
    : header()
    , lanes()  {
    }
  MonitorizedLanes_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lanes(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::t4ac_msgs::Lane_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::t4ac_msgs::Lane_<ContainerAllocator> >> _lanes_type;
  _lanes_type lanes;





  typedef boost::shared_ptr< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> const> ConstPtr;

}; // struct MonitorizedLanes_

typedef ::t4ac_msgs::MonitorizedLanes_<std::allocator<void> > MonitorizedLanes;

typedef boost::shared_ptr< ::t4ac_msgs::MonitorizedLanes > MonitorizedLanesPtr;
typedef boost::shared_ptr< ::t4ac_msgs::MonitorizedLanes const> MonitorizedLanesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator1> & lhs, const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.lanes == rhs.lanes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator1> & lhs, const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace t4ac_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1a578abb53051333eb4739652f419713";
  }

  static const char* value(const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1a578abb53051333ULL;
  static const uint64_t static_value2 = 0xeb4739652f419713ULL;
};

template<class ContainerAllocator>
struct DataType< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "t4ac_msgs/MonitorizedLanes";
  }

  static const char* value(const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Monitorized lanes \n"
"#\n"
"# MonitorizedLanes is just a list of lanes around the vehicle\n"
"\n"
"Header header\n"
"Lane[] lanes\n"
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
"\n"
"================================================================================\n"
"MSG: t4ac_msgs/Lane\n"
"## Lane definition (from the Carla library) in ROS message format\n"
"#\n"
"# Lanes are mapped using PythonAPI from Carla.\n"
"# They are made up from one \"Way\" that determine its left and right bounds\n"
"\n"
"#uint8 speedlimit	# mapped max speed in km/h\n"
"Way left		# mapped left boundary\n"
"Way right		# mapped right boundary \n"
"string role     	# Role: current, backside, left, right\n"
"\n"
"#--OPTIONAL--\n"
"#int32 lane_id 		# lane id from xodr\n"
"#bool is_junction	# true if is on a junction \n"
"#float lane_width	# horizontal size of the road\n"
"\n"
"#string type		# mapped type of lanelet\n"
"\n"
"================================================================================\n"
"MSG: t4ac_msgs/Way\n"
"# Way definition \n"
"\n"
"Node[] way	# list of nodes\n"
"\n"
"\n"
"================================================================================\n"
"MSG: t4ac_msgs/Node\n"
"## Node definition \n"
"\n"
"float64 x	# X\n"
"float64 y	# Y\n"
"float64 z	# Z\n"
;
  }

  static const char* value(const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lanes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MonitorizedLanes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::t4ac_msgs::MonitorizedLanes_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lanes[]" << std::endl;
    for (size_t i = 0; i < v.lanes.size(); ++i)
    {
      s << indent << "  lanes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::t4ac_msgs::Lane_<ContainerAllocator> >::stream(s, indent + "    ", v.lanes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // T4AC_MSGS_MESSAGE_MONITORIZEDLANES_H
