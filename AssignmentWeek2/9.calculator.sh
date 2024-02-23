#!/bin/bash

##############################################################################
# Script: calculator.sh
# Description: This script acts as a simple calculator. It prompts the user
#              to enter two numbers and an arithmetic operation (+, -, *, /),
#              then displays the result.
# Author: Amit Yadav
# Date: 22-02-2024
##############################################################################

# Function to perform arithmetic operations
perform_operation() {
    case "$2" in
        +)
            result=$(echo "$1 + $3" | bc)
            ;;
        -)
            result=$(echo "$1 - $3" | bc)
            ;;
        *)
            echo "Invalid operation. Please enter one of '+', '-', '*', '/'." >&2
            exit 1
            ;;
    esac
    echo "Result: $result"
}

# Prompt user to enter two numbers and an operation
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the arithmetic operation (+, -, *, /): " operation

# Check if input numbers are numeric
if ! [[ "$num1" =~ ^[0-9]*(\.[0-9]+)?$ && "$num2" =~ ^[0-9]*(\.[0-9]+)?$ ]]; then
    echo "Error: Input numbers must be numeric." >&2
    exit 1
fi

perform_operation "$num1" "$operation" "$num2"
