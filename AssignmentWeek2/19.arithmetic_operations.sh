#!/bin/bash

#####################################################################
# Script: arithmetic_operations.sh
# Description: This script prompts the user to enter two numbers,
#              then performs addition, subtraction, multiplication,
#              and division on them, displaying the results.
# Author: Amit Yadav
# Date: 22-02-2024
#####################################################################

# Function to perform arithmetic operations
perform_arithmetic_operations() {
    local num1="$1"
    local num2="$2"
    echo "Addition: $((num1 + num2))"
    echo "Subtraction: $((num1 - num2))"
    echo "Multiplication: $((num1 * num2))"
    echo "Division: $((num1 / num2))"
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2

perform_arithmetic_operations "$num1" "$num2"