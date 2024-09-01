#This script contains division of 2,3 and 5
#!/bin/bash
division(){
	local num=$1
	echo "your number is $num"

	for i in {2,3,5}
	do
		if [ $((num%$i)) -eq 0 ];then
			echo "Your number $num is diviabl by $i"
		fi
	done
}
division 33 

