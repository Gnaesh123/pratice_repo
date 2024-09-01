#!/bin/bash
echo "This script contain if condition on files"

read -p "Enter file or directory name :" myfile
#file or directoy exists or not
if [ -e $myfile ]; then
	echo "File or Directory is Exists"
else
	echo "File or Directory is doesn't exists"
	exit 1
fi
#To fine file or directory
if [ -d $myfile	]; then
	echo "This directory"
	exit 1
else 
	echo "This is a file"
	
fi
#To find file or readable , writable and excutable
if [ -r $myfile ]; then
	echo "This file is readable"
else
	echo "This is not a readable"
fi
if [ -w $myfile ]; then
	echo "This file is writeable"
else
	echo "This not writable"
fi
if [ -x $myfile ]; then
	echo "This file is excuteable"
else
	echo "This is not excuteable"
fi

#To find file is empty or not
if [ -s $myfile ]; then 
	echo "This is not an empty file"
else
	echo "This is an empty file"
fi
#To find file is regular file or not
if [ -f $myfile ]; then
	echo "This is an regular file"
else 
	echo "This is not regular file"
fi

