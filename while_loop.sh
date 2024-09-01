#This script contain while loop

#! /bin/bash
num=10
while [ $num -le 100 ];
do
	echo "This is increment of 4:  $num"
	num=$((num + 4)) 
done


