#!/bin/bash

#check if user executing as root user or not

if [ $UID -eq 0 ]
then 
	echo "user are root user ! continue with script"
else 
	echo "your are not a root user. script exists here!"
	exit 1
fi

#check command line parameters. if no parameter is passed exit script
if [ $# -lt 1 ]
then
	echo "No parameters is passed. script is exit here !"
	exit 2
fi
#declear variables 
#first parameter is used for username. Remaining all parameters are consider as comment
#shift is used to eliminate first parameter 
USER_NAME=$1
shift 
COMMENT=$@
PASSWORD=`date +%s%N |sha256sum |head -c18` 	
if [ $# -gt 0 ]
then
	useradd -c "$COMMENT" $USER_NAME
	if [ $? -ne 0 ]
	then
		echo "user account doesn't created due to some reasons"
		exit 3
	fi 
	#setting random password for user
	echo "${USER_NAME}:${PASSWORD}" | chpasswd ${USER_NAME}
        if [ $? -ne 0 ]
	then
		echo "password is not changed or set"
		exit 4
	fi
	#enforcing user password expiration
	passwd -e $USER_NAME

fi

echo "USERNAME = $USER_NAME"
echo "PASSWORD = $PASSWORD"
echo "`hostname`"


