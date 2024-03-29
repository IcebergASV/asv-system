// Generated by gencpp from file navigation/SimpleGPS.msg
// DO NOT EDIT!


#ifndef NAVIGATION_MESSAGE_SIMPLEGPS_H
#define NAVIGATION_MESSAGE_SIMPLEGPS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace navigation
{
template <class ContainerAllocator>
struct SimpleGPS_
{
  typedef SimpleGPS_<ContainerAllocator> Type;

  SimpleGPS_()
    : latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
    }
  SimpleGPS_(const ContainerAllocator& _alloc)
    : latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)  {
  (void)_alloc;
    }



   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _altitude_type;
  _altitude_type altitude;





  typedef boost::shared_ptr< ::navigation::SimpleGPS_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation::SimpleGPS_<ContainerAllocator> const> ConstPtr;

}; // struct SimpleGPS_

typedef ::navigation::SimpleGPS_<std::allocator<void> > SimpleGPS;

typedef boost::shared_ptr< ::navigation::SimpleGPS > SimpleGPSPtr;
typedef boost::shared_ptr< ::navigation::SimpleGPS const> SimpleGPSConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation::SimpleGPS_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation::SimpleGPS_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navigation::SimpleGPS_<ContainerAllocator1> & lhs, const ::navigation::SimpleGPS_<ContainerAllocator2> & rhs)
{
  return lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude &&
    lhs.altitude == rhs.altitude;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navigation::SimpleGPS_<ContainerAllocator1> & lhs, const ::navigation::SimpleGPS_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::navigation::SimpleGPS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::SimpleGPS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::SimpleGPS_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::SimpleGPS_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::SimpleGPS_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::SimpleGPS_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation::SimpleGPS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c48027a852aeff972be80478ff38e81a";
  }

  static const char* value(const ::navigation::SimpleGPS_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc48027a852aeff97ULL;
  static const uint64_t static_value2 = 0x2be80478ff38e81aULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation::SimpleGPS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation/SimpleGPS";
  }

  static const char* value(const ::navigation::SimpleGPS_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation::SimpleGPS_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 latitude\n"
"float64 longitude\n"
"float64 altitude\n"
;
  }

  static const char* value(const ::navigation::SimpleGPS_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation::SimpleGPS_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SimpleGPS_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation::SimpleGPS_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation::SimpleGPS_<ContainerAllocator>& v)
  {
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<double>::stream(s, indent + "  ", v.altitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_MESSAGE_SIMPLEGPS_H
