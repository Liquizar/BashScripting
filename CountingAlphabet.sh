#!/bin/bash

########################################################
# Author: Amit Yadav
# Date: 14-02-2024
#
# This script is to count the occurrence of a specific 
# alphabet in the given string.
#
########################################################

echo "Enter a string:"
read x

echo "Enter the alphabet to count:"
read alphabet

count=$(grep -o "$alphabet" <<< "$x" | wc -l)
echo "The occurrence of '$alphabet' in the string '$x' is: $count"

