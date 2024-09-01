#!/bin/bash
echo "This script contains if condition on strings"

read -s -p "Enter your password" password
if [ $password == "manigane" ]; then
        echo " "
	echo "Your password is correct " 
else
	echo ""
	echo "INCORRECT PASSWORD"
fi
