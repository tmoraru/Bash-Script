#!/bin/bash

packages="httpd"
sudo yum install  $packages -y  
sudo systemctl  $packages



