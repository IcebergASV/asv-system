<img src="https://user-images.githubusercontent.com/92492605/201941889-f4a18508-506d-4b2e-bd12-ac9e4553c2b9.png" width="200" height="200" />

# ASV System

## SSH Connection with Jetson TX2

The Jetson is not set up to be a server. Do not assume the Jetson is powered on and you can connect to it remotely. This procedure is meant to provide an option for working on the Jetson TX2.

1. Get IP address of Jetson TX2: 

```
ifconfig
```
<img src="https://user-images.githubusercontent.com/92492605/218271330-93005ce8-0429-4673-895f-51b6659d8e32.png" width="800" height="200" />

2. On remote device, ssh into Jetson TX2:

```
ssh icebergasv@<ip-address>

```
Then enter login password to the Jetson TX2  

Example:  

<img src="https://user-images.githubusercontent.com/92492605/218271575-f52604c0-daf6-4b34-b335-b051ccee7760.png"/>

### Passwordless SSH Connection
Follow this [tutorial](https://phoenixnap.com/kb/setup-passwordless-ssh)

## Systemd Launch asv-system On Bootup
This section includes documentation of how we are launching our ROS project upon booting up the Jetson TX2.   
We directly used the [Running ROS Nodes on Boot](https://mshields.name/blog/2022-03-16-running-ros-nodes-on-boot/) tutorial of how to create the system services.   

## System Services Created:
**roscore.service**
```
[Unit]
Description=ROScore service
After=network-online.target

[Service]
Type=forking
User=icebergasv
ExecStart=/bin/sh -c ". /opt/ros/melodic/setup.sh; . /etc/ros/env.sh; roscore & while ! echo exit | nc localhost 11311 > /dev/null; do sleep 1; done"

[Install]
WantedBy=multi-user.target

```
**asv_system_auto_launch.service**   
```
[Unit]
Requires=roscore.service
After=network-online.target roscore.service

[Service]
Type=simple
User=icebergasv
ExecStart=/usr/sbin/asv_system_auto_launch

[Install]
WantedBy=multi-user.target

```
## Useful Commands

```   
sudo systemctl enable roscore.service
```   

```   
sudo systemctl enable asv_system_auto_launch.service
```   

```
sudo systemctl disable roscore.service
```   

```
sudo systemctl disable asv_system_auto_launch.service
```


