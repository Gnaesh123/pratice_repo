#!/bin/bash

#In this we gone through the redirections standard input,output,error & file descriptor
#and also we will discuss about tee and xargs commands

#standard output 
#Here 1> & > both are same 1 represents file descriptor
head -2 /etc/passwd 1> std.out
head -1 /etc/passwd > std1.out
cat std.out
#standard input
#Here 0< & < both are same 0 represents file descriptor
#reading multiplr lines using while loop
while read input
do
	echo "input : $input"
done < std.out

while read input1
do
	echo "input1 : $input1"
done 0< std1.out

#for reading single line using read command only
read data < std.out
echo "std.out : $data"

#standard error redirections

errkd 2> err.out
cat err.out

#redirecting standard input & standard error 

ls -lrt &> output
cat output
ld- lrt &> output1
cat output1

#redirecting to empty file or null file which is located in /dev/null

ls -lrt &> /dev/null
cat /dev/null

#Here we will see tee command 
#tee command is a "T" junction it will take input save output to file & send output as input to another command
ls -lrt|tee ls_command.txt|grep -i case.sh
cat ls_command.txt


#xargs command 
#xargs is used to give standard input to builtin commands which is not take standard input as input
#if we use xargs then it will take standard input to those commands

cat std.out|echo

#the above command will not give any output because echo will not take standard input
#if we use xargs then it will display output
cat std.out|xargs echo

#to know weather the command is build in command or not 
type -a echo
