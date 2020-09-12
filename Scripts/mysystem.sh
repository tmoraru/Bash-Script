#!/bin/bash 

#This script will display information about me and my machine

echo "Hello $USER"
echo 
echo "Today's date is `date`, this week `date +"%V" `. "
echo
echo "These users are currently connected"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo
echo "This is `uname -s` running on `uname -n` processor."
echo
echo "This is the uptime information for you:"
echo