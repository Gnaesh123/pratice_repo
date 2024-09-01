#!/bin/bash

#checking user who execute the script is root user or not

USERID=${UID}

if [ $USERID -eq 0 ]
then
	echo "Your are root continue to execute script"
else
	echo "Your not root. script is teriminated here !"
        exit 1
fi

#promt user name of user
read -p "Enter username :" USERNAME

#promt user real name as comment 
read -p "Enter your real name :" REALNAME

#promt user to enter password
read -s -p "Enter password :" PASSWORD

#creating user in system
useradd -c "${REALNAME}" ${USERNAME}

if [ $? -ne 0 ]
then
        echo "user is unable to create due to some reasons"
        exit 1
fi

#creating password for user
echo "${USERNAME}:${PASSWORD}" | chpasswd ${USERNAME} 



#Expiring password on first login
passwd -e ${USERNAME}


echo "$USERNAME"
echo "$PASSWORD"
echo "$(hostname)"

exit 0


