#!/bin/bash
 
#Install listed packages and start one specific package
 
packages="httpd curl vim "

for items in $packages; 
do 
  echo "intalling $items" 
  sleep 2
  sudo  yum install $items 
  sleep 3
  if [ "$items" == "httpd" ]; then
   sudo systemctl start $items
   sudo systemctl status $items
  fi
 done
 
 

 

