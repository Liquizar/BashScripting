#Write a script to find the sum of the first n numbers

#!/bin/bash

# take input from the user
echo "Enter the value of n:"
read n

# initialize sum variable to 0
sum=0

# loop through the first n natural numbers and add them to the sum variable
for ((i=1;i<=n;i++))
do
    sum=$((sum+i))
done

# display the sum
echo "The sum of the first $n natural numbers is: $sum"