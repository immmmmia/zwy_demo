// Generated by gencpp from file t4ac_msgs/Landmark.msg
// DO NOT EDIT!


#ifndef T4AC_MSGS_MESSAGE_LANDMARK_H
#define T4AC_MSGS_MESSAGE_LANDMARK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <t4ac_msgs/Node.h>

namespace t4ac_msgs
{
template <class ContainerAllocator>
struct Landmark_
{
  typedef Landmark_<ContainerAllocator> Type;

  Landmark_()
    : location()
    , distance(0.0)
    , affecting_road()  {
    }
  Landmark_(const ContainerAllocator& _alloc)
    : location(_alloc)
    , distance(0.0)
    , affecting_road(_alloc)  {
  (void)_alloc;
    }



   typedef  ::t4ac_msgs::Node_<ContainerAllocator>  _location_type;
  _location_type location;

   typedef double _distance_type;
  _distance_type distance;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _affecting_road_type;
  _affecting_road_type affecting_road;





  typedef boost::shared_ptr< ::t4ac_msgs::Landmark_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::t4ac_msgs::Landmark_<ContainerAllocator> const> ConstPtr;

}; // struct Landmark_

typedef ::t4ac_msgs::Landmark_<std::allocator<void> > Landmark;

typedef boost::shared_ptr< ::t4ac_msgs::Landmark > LandmarkPtr;
typedef boost::shared_ptr< ::t4ac_msgs::Landmark const> LandmarkConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::t4ac_msgs::Landmark_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::t4ac_msgs::Landmark_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::t4ac_msgs::Landmark_<ContainerAllocator1> & lhs, const ::t4ac_msgs::Landmark_<ContainerAllocator2> & rhs)
{
  return lhs.location == rhs.location &&
    lhs.distance == rhs.distance &&
    lhs.affecting_road == rhs.affecting_road;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::t4ac_msgs::Landmark_<ContainerAllocator1> & lhs, const ::t4ac_msgs::Landmark_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace t4ac_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::Landmark_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::Landmark_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::Landmark_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::Landmark_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::Landmark_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::Landmark_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::t4ac_msgs::Landmark_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0379807a041d75b407e703bdf19b973a";
  }

  static const char* value(const ::t4ac_msgs::Landmark_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0379807a041d75b4ULL;
  static const uint64_t static_value2 = 0x07e703bdf19b973aULL;
};

template<class ContainerAllocator>
struct DataType< ::t4ac_msgs::Landmark_<ContainerAllocator> >
{
  static const char* value()
  {
    return "t4ac_msgs/Landmark";
  }

  static const char* value(const ::t4ac_msgs::Landmark_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::t4ac_msgs::Landmark_<ContainerAllocator> >
{
  static const char* value()
  {
    return "### Landmark definition ###\n"
"\n"
"Node location\n"
"float64 distance\n"
"string affecting_road\n"
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

  static const char* value(const ::t4ac_msgs::Landmark_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::t4ac_msgs::Landmark_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.location);
      stream.next(m.distance);
      stream.next(m.affecting_road);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Landmark_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::t4ac_msgs::Landmark_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::t4ac_msgs::Landmark_<ContainerAllocator>& v)
  {
    s << indent << "location: ";
    s << std::endl;
    Printer< ::t4ac_msgs::Node_<ContainerAllocator> >::stream(s, indent + "  ", v.location);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
    s << indent << "affecting_road: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.affecting_road);
  }
};

} // namespace message_operations
} // namespace ros

#endif // T4AC_MSGS_MESSAGE_LANDMARK_H
