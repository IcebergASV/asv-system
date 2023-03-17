// Generated by gencpp from file navigation/Prop.msg
// DO NOT EDIT!


#ifndef NAVIGATION_MESSAGE_PROP_H
#define NAVIGATION_MESSAGE_PROP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geographic_msgs/GeoPoint.h>
#include <navigation/GeoPointRange.h>

namespace navigation
{
template <class ContainerAllocator>
struct Prop_
{
  typedef Prop_<ContainerAllocator> Type;

  Prop_()
    : prop_type()
    , prop_coords()
    , prop_coord_range()  {
    }
  Prop_(const ContainerAllocator& _alloc)
    : prop_type(_alloc)
    , prop_coords(_alloc)
    , prop_coord_range(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _prop_type_type;
  _prop_type_type prop_type;

   typedef  ::geographic_msgs::GeoPoint_<ContainerAllocator>  _prop_coords_type;
  _prop_coords_type prop_coords;

   typedef  ::navigation::GeoPointRange_<ContainerAllocator>  _prop_coord_range_type;
  _prop_coord_range_type prop_coord_range;





  typedef boost::shared_ptr< ::navigation::Prop_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation::Prop_<ContainerAllocator> const> ConstPtr;

}; // struct Prop_

typedef ::navigation::Prop_<std::allocator<void> > Prop;

typedef boost::shared_ptr< ::navigation::Prop > PropPtr;
typedef boost::shared_ptr< ::navigation::Prop const> PropConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation::Prop_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation::Prop_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navigation::Prop_<ContainerAllocator1> & lhs, const ::navigation::Prop_<ContainerAllocator2> & rhs)
{
  return lhs.prop_type == rhs.prop_type &&
    lhs.prop_coords == rhs.prop_coords &&
    lhs.prop_coord_range == rhs.prop_coord_range;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navigation::Prop_<ContainerAllocator1> & lhs, const ::navigation::Prop_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::navigation::Prop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::Prop_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::Prop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::Prop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::Prop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::Prop_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation::Prop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "179b91140665e240f19504a5815eac9f";
  }

  static const char* value(const ::navigation::Prop_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x179b91140665e240ULL;
  static const uint64_t static_value2 = 0xf19504a5815eac9fULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation::Prop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation/Prop";
  }

  static const char* value(const ::navigation::Prop_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation::Prop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string prop_type\n"
"geographic_msgs/GeoPoint prop_coords\n"
"GeoPointRange prop_coord_range\n"
"================================================================================\n"
"MSG: geographic_msgs/GeoPoint\n"
"# Geographic point, using the WGS 84 reference ellipsoid.\n"
"\n"
"# Latitude [degrees]. Positive is north of equator; negative is south\n"
"# (-90 <= latitude <= +90).\n"
"float64 latitude\n"
"\n"
"# Longitude [degrees]. Positive is east of prime meridian; negative is\n"
"# west (-180 <= longitude <= +180). At the poles, latitude is -90 or\n"
"# +90, and longitude is irrelevant, but must be in range.\n"
"float64 longitude\n"
"\n"
"# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).\n"
"float64 altitude\n"
"\n"
"================================================================================\n"
"MSG: navigation/GeoPointRange\n"
"float64 min_latitude\n"
"float64 max_latitude\n"
"float64 min_longitude\n"
"float64 max_longitude\n"
"float64 min_altitude\n"
"float64 max_altitude \n"
;
  }

  static const char* value(const ::navigation::Prop_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation::Prop_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prop_type);
      stream.next(m.prop_coords);
      stream.next(m.prop_coord_range);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Prop_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation::Prop_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation::Prop_<ContainerAllocator>& v)
  {
    s << indent << "prop_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.prop_type);
    s << indent << "prop_coords: ";
    s << std::endl;
    Printer< ::geographic_msgs::GeoPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.prop_coords);
    s << indent << "prop_coord_range: ";
    s << std::endl;
    Printer< ::navigation::GeoPointRange_<ContainerAllocator> >::stream(s, indent + "  ", v.prop_coord_range);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_MESSAGE_PROP_H
