#!/bin/bash

###############################################################################
# Script: number_check.sh
# Description: This script prompts the user to enter a number and then prints
#              whether the number is positive, negative, or zero. It repeats
#              this process until the user enters 'q' to quit.
# Author: Amit Yadav
# Date: 22-02-2024
###############################################################################

# Function to check number
check_number() {
    if [ "$1" -gt 0 ]; then
        echo "Positive number."
    elif [ "$1" -lt 0 ]; then
        echo "Negative number."
    else
        echo "Zero."
    fi
}

echo "Enter a number ('q' to quit):"

while true; do
    read input

    # Check if input is 'q' to quit
    if [ "$input" = "q" ]; then
        echo "Exiting..."
        exit 0
    fi

    # Check if input is a number
    if [[ "$input" =~ ^-?[0-9]+$ ]]; then
        check_number "$input"
    else
        echo "Invalid input. Please enter a number or 'q' to quit."
    fi
done
