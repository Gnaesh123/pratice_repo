#!/bin/bash
 
#this script is to diplay your root user or not

#display uid of the user
echo "your uid is $UID"

#if condtion to check root user or not

if [ $UID -eq 0 ]
then
	echo "you are a root user continue with execute the script"
else 
	echo "your are not a root user script end of here !"
	exit 1
fi
#execute further script
echo "Hi your welcome"
