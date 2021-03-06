// Generated by gencpp from file topic_demo/sensor.msg
// DO NOT EDIT!


#ifndef TOPIC_DEMO_MESSAGE_SENSOR_H
#define TOPIC_DEMO_MESSAGE_SENSOR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace topic_demo
{
template <class ContainerAllocator>
struct sensor_
{
  typedef sensor_<ContainerAllocator> Type;

  sensor_()
    : v(0.0)
    , a(0.0)
    , state()  {
    }
  sensor_(const ContainerAllocator& _alloc)
    : v(0.0)
    , a(0.0)
    , state(_alloc)  {
  (void)_alloc;
    }



   typedef float _v_type;
  _v_type v;

   typedef float _a_type;
  _a_type a;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::topic_demo::sensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::topic_demo::sensor_<ContainerAllocator> const> ConstPtr;

}; // struct sensor_

typedef ::topic_demo::sensor_<std::allocator<void> > sensor;

typedef boost::shared_ptr< ::topic_demo::sensor > sensorPtr;
typedef boost::shared_ptr< ::topic_demo::sensor const> sensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::topic_demo::sensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::topic_demo::sensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace topic_demo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'topic_demo': ['/home/yxtwl94/yxtbot/src/topic_demo/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::topic_demo::sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::topic_demo::sensor_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::topic_demo::sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::topic_demo::sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::topic_demo::sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::topic_demo::sensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::topic_demo::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "14392deb7dca06dde43c9beda3dea87b";
  }

  static const char* value(const ::topic_demo::sensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x14392deb7dca06ddULL;
  static const uint64_t static_value2 = 0xe43c9beda3dea87bULL;
};

template<class ContainerAllocator>
struct DataType< ::topic_demo::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "topic_demo/sensor";
  }

  static const char* value(const ::topic_demo::sensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::topic_demo::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 v\n"
"float32 a\n"
"string state\n"
;
  }

  static const char* value(const ::topic_demo::sensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::topic_demo::sensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.v);
      stream.next(m.a);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::topic_demo::sensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::topic_demo::sensor_<ContainerAllocator>& v)
  {
    s << indent << "v: ";
    Printer<float>::stream(s, indent + "  ", v.v);
    s << indent << "a: ";
    Printer<float>::stream(s, indent + "  ", v.a);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TOPIC_DEMO_MESSAGE_SENSOR_H
