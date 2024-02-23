#!/bin/bash

#################################################################################
# Script: 1.GreetingMessage.sh
# Description: This script prompts the user to enter their name and age,
#              then prints a greeting message with their name and a message
#              indicating if they are a minor or an adult based on their age.
# Author: Amit Yadav
# Date: 22-02-2024
#################################################################################

# Prompt user for name
echo "Please enter your name:"
read -r name

# Prompt user for age
echo "Please enter your age:"
read -r age

# Check if age is numeric
if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Age must be a numeric value."
    exit 1
fi

# Determine if the user is a minor or an adult
if [ "$age" -lt 18 ]; then
    status="a minor"
else
    status="an adult"
fi

# Print greeting message
echo "Hello, $name! You are $status."