#!/bin/bash

#############################################################
# Author: Amit Yadav
# Date: 14-02-2024
#
# This script take two number as input a and b, then compare
# and tell which one is greater.
#############################################################

echo "Enter first number:"
read a

echo "Enter second number:"
read b

if [ "$a" -gt "$b" ]; then
	echo "$a is greater than $b"
elif [ "$b" -gt "$a" ]; then
	echo "$b is greater than $a"  
else
	echo "$a and $b are equal"
fi
