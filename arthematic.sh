#!/bin/bash
echo "This script contains arthematic expressions"
#number1 is variable one
number1=$1
#number2 is variable two
number2=$2

#addition of two numbers
echo "The sum of number1 & number2 is "$((number1+number2))
#subtraction of two numbers
echo "The subtration of number1 & number2 is "$((number1-number2))
#multiplication of two numbers
echo "The multiplication of two numbers is "$((number1*number2))
#division of two numbers
echo "The division of two numbers is "$((number1/number2))
#modules of two numbers
echo "The modules of two numbers is "$((number1%number2))


