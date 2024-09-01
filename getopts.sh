#/bin/bash

#getopts is used to vaildate the command options 
#for example ls -lrt. Here lrt represent option getopts deals with this options

#Write a script to generate the password



usage(){

	echo "Invaild option ${OPTION}"
	echo "Use -l is to specify the length"
	echo "Use -s is to specify the special char to password"
	echo "Use -v is to turn on Verbose mode"
	exit 1
}
#Set the length variable
LENGTH=24
#Use while loop to validate the getopts

while getopts vls OPTION
do
	case ${OPTION} in
	v)
		VERBOSE='true'
		echo "VERBOSE MODE IS ON"
	;;
	s)
		SPECIAL_CHAR='true'
	;;
        l)
		LENGTH="${OPTARG}"
		echo "Please specify the length of the password"
	;;
        *) 
		usage
	;;
        esac
done

#Generatung password
PASSWORD=$(date +%s%N${RANDOM}${RANDOM}|sha256sum| head -c8)

#Special character is enabled

if [[ $SPECIAL_CHAR == 'true' ]]
then
	SC=$(echo " $%#&*)(^@@!##$%&Y**&*@#%"|fold -w1|shuf |head -c1)
	PASSWORD=${PASSWORD}${SC}
fi

#echo password
echo $PASSWORD
