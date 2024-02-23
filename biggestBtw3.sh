#write a script to find the biggest of 3 numbers.

#!/bin/bash

# Prompt the user to enter three numbers
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3

# Check which number is bigger
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo "The first number is bigger"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo "The second number is bigger"
elif [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ]
then
    echo "The third number is bigger"
else
    echo "Two or more numbers are equal"
fi