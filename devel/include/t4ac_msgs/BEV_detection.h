// Generated by gencpp from file t4ac_msgs/BEV_detection.msg
// DO NOT EDIT!


#ifndef T4AC_MSGS_MESSAGE_BEV_DETECTION_H
#define T4AC_MSGS_MESSAGE_BEV_DETECTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace t4ac_msgs
{
template <class ContainerAllocator>
struct BEV_detection_
{
  typedef BEV_detection_<ContainerAllocator> Type;

  BEV_detection_()
    : type()
    , score(0.0)
    , object_id(0)
    , x(0.0)
    , y(0.0)
    , vel_lin(0.0)
    , vel_ang(0.0)
    , tl_br()
    , x_corners()
    , y_corners()
    , l(0.0)
    , w(0.0)
    , o(0.0)
    , safety_zone(false)  {
    }
  BEV_detection_(const ContainerAllocator& _alloc)
    : type(_alloc)
    , score(0.0)
    , object_id(0)
    , x(0.0)
    , y(0.0)
    , vel_lin(0.0)
    , vel_ang(0.0)
    , tl_br(_alloc)
    , x_corners(_alloc)
    , y_corners(_alloc)
    , l(0.0)
    , w(0.0)
    , o(0.0)
    , safety_zone(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;

   typedef double _score_type;
  _score_type score;

   typedef uint16_t _object_id_type;
  _object_id_type object_id;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _vel_lin_type;
  _vel_lin_type vel_lin;

   typedef double _vel_ang_type;
  _vel_ang_type vel_ang;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _tl_br_type;
  _tl_br_type tl_br;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _x_corners_type;
  _x_corners_type x_corners;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _y_corners_type;
  _y_corners_type y_corners;

   typedef double _l_type;
  _l_type l;

   typedef double _w_type;
  _w_type w;

   typedef double _o_type;
  _o_type o;

   typedef uint8_t _safety_zone_type;
  _safety_zone_type safety_zone;





  typedef boost::shared_ptr< ::t4ac_msgs::BEV_detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::t4ac_msgs::BEV_detection_<ContainerAllocator> const> ConstPtr;

}; // struct BEV_detection_

typedef ::t4ac_msgs::BEV_detection_<std::allocator<void> > BEV_detection;

typedef boost::shared_ptr< ::t4ac_msgs::BEV_detection > BEV_detectionPtr;
typedef boost::shared_ptr< ::t4ac_msgs::BEV_detection const> BEV_detectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::t4ac_msgs::BEV_detection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::t4ac_msgs::BEV_detection_<ContainerAllocator1> & lhs, const ::t4ac_msgs::BEV_detection_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type &&
    lhs.score == rhs.score &&
    lhs.object_id == rhs.object_id &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.vel_lin == rhs.vel_lin &&
    lhs.vel_ang == rhs.vel_ang &&
    lhs.tl_br == rhs.tl_br &&
    lhs.x_corners == rhs.x_corners &&
    lhs.y_corners == rhs.y_corners &&
    lhs.l == rhs.l &&
    lhs.w == rhs.w &&
    lhs.o == rhs.o &&
    lhs.safety_zone == rhs.safety_zone;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::t4ac_msgs::BEV_detection_<ContainerAllocator1> & lhs, const ::t4ac_msgs::BEV_detection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace t4ac_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::t4ac_msgs::BEV_detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::t4ac_msgs::BEV_detection_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::t4ac_msgs::BEV_detection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e7e32ae5122e513b61afaaf47d1cdc1";
  }

  static const char* value(const ::t4ac_msgs::BEV_detection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e7e32ae5122e513ULL;
  static const uint64_t static_value2 = 0xb61afaaf47d1cdc1ULL;
};

template<class ContainerAllocator>
struct DataType< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "t4ac_msgs/BEV_detection";
  }

  static const char* value(const ::t4ac_msgs::BEV_detection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Techs4AgeCar project\n"
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

  static const char* value(const ::t4ac_msgs::BEV_detection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.score);
      stream.next(m.object_id);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.vel_lin);
      stream.next(m.vel_ang);
      stream.next(m.tl_br);
      stream.next(m.x_corners);
      stream.next(m.y_corners);
      stream.next(m.l);
      stream.next(m.w);
      stream.next(m.o);
      stream.next(m.safety_zone);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BEV_detection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::t4ac_msgs::BEV_detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::t4ac_msgs::BEV_detection_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
    s << indent << "score: ";
    Printer<double>::stream(s, indent + "  ", v.score);
    s << indent << "object_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.object_id);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "vel_lin: ";
    Printer<double>::stream(s, indent + "  ", v.vel_lin);
    s << indent << "vel_ang: ";
    Printer<double>::stream(s, indent + "  ", v.vel_ang);
    s << indent << "tl_br[]" << std::endl;
    for (size_t i = 0; i < v.tl_br.size(); ++i)
    {
      s << indent << "  tl_br[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.tl_br[i]);
    }
    s << indent << "x_corners[]" << std::endl;
    for (size_t i = 0; i < v.x_corners.size(); ++i)
    {
      s << indent << "  x_corners[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.x_corners[i]);
    }
    s << indent << "y_corners[]" << std::endl;
    for (size_t i = 0; i < v.y_corners.size(); ++i)
    {
      s << indent << "  y_corners[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.y_corners[i]);
    }
    s << indent << "l: ";
    Printer<double>::stream(s, indent + "  ", v.l);
    s << indent << "w: ";
    Printer<double>::stream(s, indent + "  ", v.w);
    s << indent << "o: ";
    Printer<double>::stream(s, indent + "  ", v.o);
    s << indent << "safety_zone: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.safety_zone);
  }
};

} // namespace message_operations
} // namespace ros

#endif // T4AC_MSGS_MESSAGE_BEV_DETECTION_H
