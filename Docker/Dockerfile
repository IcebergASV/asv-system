
FROM ubuntu:16.04
RUN apt-get update \
  && apt-get install -y locales lsb-release
ARG DEBIAN_FRONTEND=noninteractive

RUN dpkg-reconfigure locales

# Install ROS Kinetic
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-get install -y curl
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt-get update \
 && apt-get install -y --no-install-recommends ros-kinetic-desktop-full
RUN rosdep init \
  && rosdep fix-permissions \
  && rosdep update
RUN echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc


#RUN apt-get update \ 
 #&& apt-get upgrade \
  #&& apt-get install -y curl \
  #&& sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' \ 
  #&& apt-get -y update

#RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

#RUN apt-get update

#RUN apt-get install ros-kinectic-deskto

#RUN apt-get update && apt-get upgrade

#RUN apt-get install -y curl 

#RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

#RUN apt-get -y update

#RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

#RUN apt-get update

#RUN apt-get install ros-kinectic-desktop

