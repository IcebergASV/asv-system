# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navigation: 7 messages, 0 services")

set(MSG_I_FLAGS "-Inavigation:/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Igeographic_msgs:/opt/ros/melodic/share/geographic_msgs/cmake/../msg;-Imavros_msgs:/opt/ros/melodic/share/mavros_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/melodic/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navigation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" ""
)

get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" ""
)

get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" ""
)

get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" "navigation/GeoPointRange:geographic_msgs/GeoPoint:navigation/Prop"
)

get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" "geographic_msgs/GeoPoint:navigation/GeoPointRange"
)

get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" ""
)

get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" NAME_WE)
add_custom_target(_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation" "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" "geographic_msgs/GeoPoint"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg"
  "${MSG_I_FLAGS}"
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg;/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)
_generate_msg_cpp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
)

### Generating Services

### Generating Module File
_generate_module_cpp(navigation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navigation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navigation_generate_messages navigation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" NAME_WE)
add_dependencies(navigation_generate_messages_cpp _navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_gencpp)
add_dependencies(navigation_gencpp navigation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg"
  "${MSG_I_FLAGS}"
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg;/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)
_generate_msg_eus(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
)

### Generating Services

### Generating Module File
_generate_module_eus(navigation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navigation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navigation_generate_messages navigation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" NAME_WE)
add_dependencies(navigation_generate_messages_eus _navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_geneus)
add_dependencies(navigation_geneus navigation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg"
  "${MSG_I_FLAGS}"
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg;/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)
_generate_msg_lisp(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
)

### Generating Services

### Generating Module File
_generate_module_lisp(navigation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navigation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navigation_generate_messages navigation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" NAME_WE)
add_dependencies(navigation_generate_messages_lisp _navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_genlisp)
add_dependencies(navigation_genlisp navigation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg"
  "${MSG_I_FLAGS}"
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg;/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)
_generate_msg_nodejs(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(navigation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navigation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navigation_generate_messages navigation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" NAME_WE)
add_dependencies(navigation_generate_messages_nodejs _navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_gennodejs)
add_dependencies(navigation_gennodejs navigation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg"
  "${MSG_I_FLAGS}"
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg;/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg;/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)
_generate_msg_py(navigation
  "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
)

### Generating Services

### Generating Module File
_generate_module_py(navigation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navigation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navigation_generate_messages navigation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/yolo.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/SimpleGPS.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Compass.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropArray.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/Prop.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/GeoPointRange.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icebergasv/asv-system/catkin_ws/src/navigation_pkg/msg/PropInProgress.msg" NAME_WE)
add_dependencies(navigation_generate_messages_py _navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_genpy)
add_dependencies(navigation_genpy navigation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navigation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(navigation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET geographic_msgs_generate_messages_cpp)
  add_dependencies(navigation_generate_messages_cpp geographic_msgs_generate_messages_cpp)
endif()
if(TARGET mavros_msgs_generate_messages_cpp)
  add_dependencies(navigation_generate_messages_cpp mavros_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(navigation_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navigation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(navigation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET geographic_msgs_generate_messages_eus)
  add_dependencies(navigation_generate_messages_eus geographic_msgs_generate_messages_eus)
endif()
if(TARGET mavros_msgs_generate_messages_eus)
  add_dependencies(navigation_generate_messages_eus mavros_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(navigation_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navigation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(navigation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET geographic_msgs_generate_messages_lisp)
  add_dependencies(navigation_generate_messages_lisp geographic_msgs_generate_messages_lisp)
endif()
if(TARGET mavros_msgs_generate_messages_lisp)
  add_dependencies(navigation_generate_messages_lisp mavros_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(navigation_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navigation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(navigation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET geographic_msgs_generate_messages_nodejs)
  add_dependencies(navigation_generate_messages_nodejs geographic_msgs_generate_messages_nodejs)
endif()
if(TARGET mavros_msgs_generate_messages_nodejs)
  add_dependencies(navigation_generate_messages_nodejs mavros_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(navigation_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navigation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(navigation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET geographic_msgs_generate_messages_py)
  add_dependencies(navigation_generate_messages_py geographic_msgs_generate_messages_py)
endif()
if(TARGET mavros_msgs_generate_messages_py)
  add_dependencies(navigation_generate_messages_py mavros_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(navigation_generate_messages_py sensor_msgs_generate_messages_py)
endif()
