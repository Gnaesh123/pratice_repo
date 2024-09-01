#!/bin/bash

#this script will delete the user accounts 

#CHECK WEATHER SCRPIT IS RUN AS ROOT USER

if [[ ${UID} -ne 0 ]]
then
	echo "Plaese run as a root user"
fi
exit 

#to take user name as a variable 

USERNAME="${1}"

deluser  ${USERNAME}

if [[ ${?} -eq 0 ]]
then 
	echo "USER account was deleted"
else 
	echo "USER account was not deleted"
fi
exit 1

