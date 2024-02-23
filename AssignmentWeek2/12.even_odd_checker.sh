#!/bin/bash

###############################################################################
# Script: even_odd_checker.sh
# Description: This script prompts the user to enter a number between 1 and 10.
#              If the number is within this range, the script prints a message
#              indicating whether it's an even or odd number. If the number is
#              outside this range, it asks the user to try again.
# Author: Amit Yadav
# Date: 22-02-2024
###############################################################################

# Function to check if number is even or odd
check_even_odd() {
    if [ "$(( $1 % 2 ))" -eq 0 ]; then
        echo "Number $1 is even."
    else
        echo "Number $1 is odd."
    fi
}

while true; do
    read -p "Enter a number between 1 and 10: " number

    if [ "$number" -ge 1 ] && [ "$number" -le 10 ]; then
        check_even_odd "$number"
        break
    else
        echo "Invalid number. Please enter a number between 1 and 10."
    fi
done
