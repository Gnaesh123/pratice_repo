#This script contain case logic
#!/bin/bash

#Here $1 is first parameter matches with start & stop
case $1 in 
	start|starting)
		echo "start or starting."
		;;
	stop)
		echo "stopping."
                ;;
esac

#Here [a-z] means range if anythings matches with a to z then olny display 
# * means anything s* anythings after s it will take as vaild
read choice
case $choice in
	[a-z]) echo "you typed small a-z"
	;;
        [A-Z]) echo "you typed capital A-Z"
	;;
        [0-9]) echo "you enter 0-9"
	;;
        "hello") echo "you type hello"
	;;
        1[0-9]) echo "you enter 10-19"
	;;
        2[1-9] | 3[1-8]) echo "you have entered 21-29 or 31-38"
	;;
        *) echo "None of the above"
	;;
esac
