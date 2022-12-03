<img src="https://user-images.githubusercontent.com/92492605/201941889-f4a18508-506d-4b2e-bd12-ac9e4553c2b9.png" width="200" height="200" />

sudo docker run -it --net=host     --env="DISPLAY"     --env="QT_X11_NO_MITSHM=1"     --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --volume="/home/mjmccarthy/aaron-test/aaron_ws"    osrf/ros:noetic-desktop-full
xhost +
sh nvidia-container-runtime-script.sh
sudo ubuntu-drivers autoinstall
reboot
sudo ubuntu-drivers autoinstall
sudo apt install ubuntu-drivers-common
lspci -vv | grep -i nvidia
