FROM nvcr.io/nvidia/l4t-base:r35.1.0

RUN apt-get update -y 
RUN apt-get autoremove -y 
RUN apt-get install --no-install-recommends apt-utils -y 

# Allows for a device to run arm64 architecture
COPY qemu-arm-static /usr/bin/qemu-arm-static 