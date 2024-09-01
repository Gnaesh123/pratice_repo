#This script contains sleep 
#!/bin/bash
for i in {1..10}
do
	echo "This number $i"
	sleep 1
done

var=1
while [ $var -gt -1 ];
do 
	echo "This is number $var"
	var=$((var+1))
	sleep 5 
done
