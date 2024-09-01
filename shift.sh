#!/bin/bash

#shift is the command it will change the postions of the parameters

while [ $# -gt 0 ]
do
	echo "Number of parameters is : $#"
	echo "first parameter is : $1"
	echo "second parameter is : $2"
	echo "third parameter is : $3"
	echo ""
	shift 
done

