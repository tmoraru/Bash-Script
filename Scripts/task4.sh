#!/bin/bash 


package=(httpd vim curl wget git)
yum install ${package[*]} -y
echo $?
sleep 5
sysystemctl start ${package[0]}
echo $?
 
