// Generated by gencpp from file svo_msgs/Feature.msg
// DO NOT EDIT!


#ifndef SVO_MSGS_MESSAGE_FEATURE_H
#define SVO_MSGS_MESSAGE_FEATURE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace svo_msgs
{
template <class ContainerAllocator>
struct Feature_
{
  typedef Feature_<ContainerAllocator> Type;

  Feature_()
    : u(0.0)
    , v(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  Feature_(const ContainerAllocator& _alloc)
    : u(0.0)
    , v(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef float _u_type;
  _u_type u;

   typedef float _v_type;
  _v_type v;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::svo_msgs::Feature_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::svo_msgs::Feature_<ContainerAllocator> const> ConstPtr;

}; // struct Feature_

typedef ::svo_msgs::Feature_<std::allocator<void> > Feature;

typedef boost::shared_ptr< ::svo_msgs::Feature > FeaturePtr;
typedef boost::shared_ptr< ::svo_msgs::Feature const> FeatureConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::svo_msgs::Feature_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::svo_msgs::Feature_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace svo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'svo_msgs': ['/home/guoziwei/ROS/src/rpg_svo/svo_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::svo_msgs::Feature_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::svo_msgs::Feature_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::svo_msgs::Feature_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::svo_msgs::Feature_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::svo_msgs::Feature_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::svo_msgs::Feature_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::svo_msgs::Feature_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4f7761c191bddfddcd2f99bea993a700";
  }

  static const char* value(const ::svo_msgs::Feature_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4f7761c191bddfddULL;
  static const uint64_t static_value2 = 0xcd2f99bea993a700ULL;
};

template<class ContainerAllocator>
struct DataType< ::svo_msgs::Feature_<ContainerAllocator> >
{
  static const char* value()
  {
    return "svo_msgs/Feature";
  }

  static const char* value(const ::svo_msgs::Feature_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::svo_msgs::Feature_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 u\n\
float32 v\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::svo_msgs::Feature_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::svo_msgs::Feature_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u);
      stream.next(m.v);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Feature_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::svo_msgs::Feature_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::svo_msgs::Feature_<ContainerAllocator>& v)
  {
    s << indent << "u: ";
    Printer<float>::stream(s, indent + "  ", v.u);
    s << indent << "v: ";
    Printer<float>::stream(s, indent + "  ", v.v);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SVO_MSGS_MESSAGE_FEATURE_H
