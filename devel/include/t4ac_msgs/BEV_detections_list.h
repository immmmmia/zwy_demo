// Generated by gencpp from file t4ac_msgs/BEV_detections_list.msg
// DO NOT EDIT!


#ifndef T4AC_MSGS_MESSAGE_BEV_DETECTIONS_LIST_H
#define T4AC_MSGS_MESSAGE_BEV_DETECTIONS_LIST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <t4ac_msgs/BEV_detection.h>

namespace t4ac_msgs
{
template <class ContainerAllocator>
struct BEV_detections_list_
{
  typedef BEV_detections_list_<ContainerAllocator> Type;

  BEV_detections_list_()
    : header()
    , front(0.0)
    , back(0.0)
    , left(0.0)
    , right(0.0)
    , bev_detections_list()  {
    }
  BEV_detections_list_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , front(0.0)
    , back(0.0)
    , left(0.0)
    , right(0.0)
    , bev_detections_list(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _front_type;
  _front_type front;

   typedef double _back_type;
  _back_type back;

   typedef double _left_type;
  _left_type left;

   typedef double _right_type;
  _right_type right;

   typedef std::vector< ::t4ac_msgs::BEV_detection_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >> _bev_detections_list_type;
  _bev_detections_list_type bev_detections_list;





  typedef boost::shared_ptr< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> const> ConstPtr;

}; // struct BEV_detections_list_

typedef ::t4ac_msgs::BEV_detections_list_<std::allocator<void> > BEV_detections_list;

typedef boost::shared_ptr< ::t4ac_msgs::BEV_detections_list > BEV_detections_listPtr;
typedef boost::shared_ptr< ::t4ac_msgs::BEV_detections_list const> BEV_detections_listConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator1> & lhs, const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.front == rhs.front &&
    lhs.back == rhs.back &&
    lhs.left == rhs.left &&
    lhs.right == rhs.right &&
    lhs.bev_detections_list == rhs.bev_detections_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator1> & lhs, const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace t4ac_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
{
  static const char* value()
  {
    return "759bec6ecb814309c94289f28049e196";
  }

  static const char* value(const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x759bec6ecb814309ULL;
  static const uint64_t static_value2 = 0xc94289f28049e196ULL;
};

template<class ContainerAllocator>
struct DataType< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
{
  static const char* value()
  {
    return "t4ac_msgs/BEV_detections_list";
  }

  static const char* value(const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Techs4AgeCar project\n"
"\n"
"Header header                       # Frame and timestamp information\n"
"\n"
"float64 front                       # BEV grid size (front, back, left, right in meters)\n"
"float64 back\n"
"float64 left\n"
"float64 right\n"
"\n"
"BEV_detection[] bev_detections_list # List of bev_obstacles\n"
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
"MSG: t4ac_msgs/BEV_detection\n"
"# Techs4AgeCar project\n"
"\n"
"string type         # Object type\n"
"float64 score       # Object probability (0 to 1)\n"
"uint16 object_id    # Object ID \n"
"\n"
"float64   x         # BEV x centroid\n"
"float64   y         # BEV y centroid \n"
"float64   vel_lin   # (Only Groundtruth) Linear velocity (Module of vx and vy)\n"
"float64   vel_ang   # (Only Groundtruth) Angular velocity (Z-axis)\n"
"float64[] tl_br     # 2D bbox top-left, bottom-right xy coordinates\n"
"float64[] x_corners # 3D bbox x coordinates of the corners\n"
"float64[] y_corners # 3D bbox y coordinates of the corners\n"
"float64   l         # BEV length of the object\n"
"float64   w         # BEV width of the object\n"
"float64   o         # Object orientation\n"
"\n"
"bool safety_zone    # If true, the detection is very near the vehicle \n"
"                    # Evaluate the predicted collision with this detection\n"
"\n"
"\n"
;
  }

  static const char* value(const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.front);
      stream.next(m.back);
      stream.next(m.left);
      stream.next(m.right);
      stream.next(m.bev_detections_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BEV_detections_list_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::t4ac_msgs::BEV_detections_list_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::t4ac_msgs::BEV_detections_list_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "front: ";
    Printer<double>::stream(s, indent + "  ", v.front);
    s << indent << "back: ";
    Printer<double>::stream(s, indent + "  ", v.back);
    s << indent << "left: ";
    Printer<double>::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    Printer<double>::stream(s, indent + "  ", v.right);
    s << indent << "bev_detections_list[]" << std::endl;
    for (size_t i = 0; i < v.bev_detections_list.size(); ++i)
    {
      s << indent << "  bev_detections_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >::stream(s, indent + "    ", v.bev_detections_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // T4AC_MSGS_MESSAGE_BEV_DETECTIONS_LIST_H
