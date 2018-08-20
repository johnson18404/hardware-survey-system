#!/bin/sh
whoami > /tmp/spec.txt                  # user name
ip addr >> /tmp/spec.txt                # Private IP address 
uname -a >> /tmp/spec.txt               # OS version
sudo lshw -short >> /tmp/spec.txt       # Hardware Infomation     
cat /tmp/spec.txt | netcat 127.0.0.1 1234 # send to server  
echo "finish. Thank you."
