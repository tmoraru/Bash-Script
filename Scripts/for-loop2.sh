#!/bin/bash
 


packages="httpd curl vim "

for items in $packages;
do 
  echo "intalling $items" 
  sleep 2
  sudo  yum install $items 
  sleep 3
 done

