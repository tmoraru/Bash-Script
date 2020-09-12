#!/bin/bash 

#This script will display information about me and my machine

echo -e "Hello $USER \n"   #$ is used to get the content of variable
echo -e "Today's date is `date`, this week `date +"%V" `. \n"
echo -e "These users are currently connected \n"
w | cut -d " " -f 1 - | grep -v USER | sort -u  #w - showed who is loggin on my machine
echo -e "This is `uname -s` running on `uname -n` processor. \n"
echo -e "This is the uptime information for you: \n"

#date - shows the date
#date +"%V" - number of the week
#uname -n - shows the ip
#$USER - shows the OS
