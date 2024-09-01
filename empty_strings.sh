#!/bin/bash
read -p "Enter string value :" str
if [ -z $str ]; then 
	echo "These are empty strings"
	exit
fi
echo "move on"

read -p "Enter value :" stg
#if we provide space between two strings it will not throw any error
if [ -z "$stg" ]; then
	echo "Thses are empty strings"
	exit
fi
echo "move on"
