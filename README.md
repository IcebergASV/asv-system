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

