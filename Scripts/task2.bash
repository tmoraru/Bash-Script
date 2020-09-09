#!/bin/bash
#Declare packages  which you want to install
packages=(httpd vim curl)
echo ${packages[*]}
#Install packages 
sudo yum install  $packages ${packages[*]}  -y 
echo $?
sleep 5
sudo systemctl start ${packages[0]}
echo $?

#Chech if all packages are available into your system

# rpm -qa  | grep 'httpd\|vim\|curl'

#it runs sequencials flow - read the command step by step

