#! /bin/bash
num=200
while [ $num -le 2000 ];
do
	echo "This is increment of $num"
	num=$((num+4))
done

while [ true ]
do
	echo "$RANDOM"
sleep 2
done


