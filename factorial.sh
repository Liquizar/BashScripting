#Write a script to find the factorial of a given number

#!/bin/bash

echo "Enter the number to find the factorial"
read num

result=1
while [ $num -gt 0 ]
do 
    result=$((result * num))
    num=$((num - 1))
done

echo "The factorial of the given number is $result"
