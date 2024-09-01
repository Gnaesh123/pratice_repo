#This script contain functions in shell script
#Function is nothing but repeated task can called by single step
#!/bin/bash
#additon of number function

add(){
	var1=$1
	var2=$2
	echo "addition" "$((var1+var2))"
}
echo "calling function addition of $var1 & $var2"
add $1 $2 

#example function here logger will generate log messages to /var/log/messages

example () {
	variable=${@}
	if [[ "$input" == 'Hello' ]]
	then
		echo "value os variabel is : $variable"
		logger -t "ganesh" $variable
	fi
}
#Here readonly is used to do not modify a variable,constent variable
readonly input="Hello"
example 'Hii' 'Hello'
example 'this is ganesh'

backup_file (){

#Backup the case.sh to /tmp location by taking first argument as backupfile

backupfile=$@
echo $backupfile
if [[ -f ~/shell_scripting/$backupfile ]]
then	
       backup_variable=/tmp/$(basename ${backupfile}.$(date +%F))
       cp -pr $backupfile $backup_variable
fi

}
backup_file $@
