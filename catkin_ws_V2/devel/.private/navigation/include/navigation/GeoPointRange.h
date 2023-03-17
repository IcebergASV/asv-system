// Generated by gencpp from file navigation/GeoPointRange.msg
// DO NOT EDIT!


#ifndef NAVIGATION_MESSAGE_GEOPOINTRANGE_H
#define NAVIGATION_MESSAGE_GEOPOINTRANGE_H


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
struct GeoPointRange_
{
  typedef GeoPointRange_<ContainerAllocator> Type;

  GeoPointRange_()
    : min_latitude(0.0)
    , max_latitude(0.0)
    , min_longitude(0.0)
    , max_longitude(0.0)
    , min_altitude(0.0)
    , max_altitude(0.0)  {
    }
  GeoPointRange_(const ContainerAllocator& _alloc)
    : min_latitude(0.0)
    , max_latitude(0.0)
    , min_longitude(0.0)
    , max_longitude(0.0)
    , min_altitude(0.0)
    , max_altitude(0.0)  {
  (void)_alloc;
    }



   typedef double _min_latitude_type;
  _min_latitude_type min_latitude;

   typedef double _max_latitude_type;
  _max_latitude_type max_latitude;

   typedef double _min_longitude_type;
  _min_longitude_type min_longitude;

   typedef double _max_longitude_type;
  _max_longitude_type max_longitude;

   typedef double _min_altitude_type;
  _min_altitude_type min_altitude;

   typedef double _max_altitude_type;
  _max_altitude_type max_altitude;





  typedef boost::shared_ptr< ::navigation::GeoPointRange_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation::GeoPointRange_<ContainerAllocator> const> ConstPtr;

}; // struct GeoPointRange_

typedef ::navigation::GeoPointRange_<std::allocator<void> > GeoPointRange;

typedef boost::shared_ptr< ::navigation::GeoPointRange > GeoPointRangePtr;
typedef boost::shared_ptr< ::navigation::GeoPointRange const> GeoPointRangeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation::GeoPointRange_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation::GeoPointRange_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navigation::GeoPointRange_<ContainerAllocator1> & lhs, const ::navigation::GeoPointRange_<ContainerAllocator2> & rhs)
{
  return lhs.min_latitude == rhs.min_latitude &&
    lhs.max_latitude == rhs.max_latitude &&
    lhs.min_longitude == rhs.min_longitude &&
    lhs.max_longitude == rhs.max_longitude &&
    lhs.min_altitude == rhs.min_altitude &&
    lhs.max_altitude == rhs.max_altitude;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navigation::GeoPointRange_<ContainerAllocator1> & lhs, const ::navigation::GeoPointRange_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::navigation::GeoPointRange_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::GeoPointRange_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::GeoPointRange_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::GeoPointRange_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::GeoPointRange_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::GeoPointRange_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation::GeoPointRange_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8a4b85d7b91a11f0867d2e73a2c8f009";
  }

  static const char* value(const ::navigation::GeoPointRange_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8a4b85d7b91a11f0ULL;
  static const uint64_t static_value2 = 0x867d2e73a2c8f009ULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation::GeoPointRange_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation/GeoPointRange";
  }

  static const char* value(const ::navigation::GeoPointRange_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation::GeoPointRange_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 min_latitude\n"
"float64 max_latitude\n"
"float64 min_longitude\n"
"float64 max_longitude\n"
"float64 min_altitude\n"
"float64 max_altitude \n"
;
  }

  static const char* value(const ::navigation::GeoPointRange_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation::GeoPointRange_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.min_latitude);
      stream.next(m.max_latitude);
      stream.next(m.min_longitude);
      stream.next(m.max_longitude);
      stream.next(m.min_altitude);
      stream.next(m.max_altitude);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GeoPointRange_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation::GeoPointRange_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation::GeoPointRange_<ContainerAllocator>& v)
  {
    s << indent << "min_latitude: ";
    Printer<double>::stream(s, indent + "  ", v.min_latitude);
    s << indent << "max_latitude: ";
    Printer<double>::stream(s, indent + "  ", v.max_latitude);
    s << indent << "min_longitude: ";
    Printer<double>::stream(s, indent + "  ", v.min_longitude);
    s << indent << "max_longitude: ";
    Printer<double>::stream(s, indent + "  ", v.max_longitude);
    s << indent << "min_altitude: ";
    Printer<double>::stream(s, indent + "  ", v.min_altitude);
    s << indent << "max_altitude: ";
    Printer<double>::stream(s, indent + "  ", v.max_altitude);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_MESSAGE_GEOPOINTRANGE_H