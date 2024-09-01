#This script contain local and global variables
#in shell script by default all variable are globle variables if we want to make it has local we use local infront of variable
#!/bin/bash
fun(){
	var1=10
	local var2=20
	echo "multiplication" $((var1*var2))
	echo "this is local variable : $var2"
}
echo "this is function "
fun

echo "this is global variable $var1"
#this will not display output its a local variable it will display output inside function
echo "this local variable $var2"
