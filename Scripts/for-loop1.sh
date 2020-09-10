#!/bin/bash
#This type of for loop is characterized by counting. The range is specified by a beginning (#1) and ending number (#5). The for loop executes a sequence of commands for each member in a list of items. 
#A representative example in BASH is as follows to display welcome message 5 times with for loop

for i in 1 2 3 4 5   #or use {1..5}
do 
  echo "Welcome $i times"
done


for i in {6..10}
do 
  echo "Welcome $i times"
done

#Set up a value allowing one to count by two's 

for i in {10..20..2}
do
  echo "Good buy $i summer"
done

for i in $(ls); do
  echo item: $i
done