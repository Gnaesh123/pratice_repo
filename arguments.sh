#!/bin/bash 

#Display the Paramters that we passed at execution of script

echo "Your execute this command : $0 "

#Display 1st and 2nd parameters at execution of script

echo "Your 1st argument is $1 & your 2nd argument is $2"

#count the how many arguments are passed

echo "Total arguments you are passed $#"

#how to remove path are hashed
echo "this is ganesh " >> /usr/bin/cat
hash -r

#Passing multiple parameters withou knowing the count of parameter.Here i can pass as many parameters

for NAME in $@
do
	echo "$NAME"
	PASSWORD=`date +%s%N |sha256sum|head -c20`
	echo "$NAME:$PASSWORD"
done

#Passing multiple parameter but its take single parameter only in @*
for NAME in $*
do
        echo "$NAME"
        PASSWORD=`date +%s%N |sha256sum|head -c20`
        echo "$NAME:$PASSWORD"
done

