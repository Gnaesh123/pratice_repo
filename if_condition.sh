echo "This script contain if , elsif & else"
read -p "Enter your age " age
echo "Your age is $age"
if [ $age -ge 25 -a $age -lt 30 ] ;then
	echo "Your are ready marriage"
elif [ $age -lt 25 ];then
	echo "Your age is under official marriage age"
else [ $age -gt 30 ];
	echo "Your are already married"
fi
if [ $age -lt 0 ] ;then

	echo "Your is age is negative"
fi

# -lt is less then
# -gt is greater then
# -ne is not equal
# -eq is equal
# -le is less then or equalto
# -ge is greater then or equalto
# Logical operations:
# -o or 
# -a and

