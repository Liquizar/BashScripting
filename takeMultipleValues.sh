#!/bin/bash
# Prompt the user for input

read -p "Enter two or multiple integer values, separated by spaces: " input_str

# Split the input string into individual values
values=($input_str)

# Convert the values to integers
int_values=()

for val in "${values[@]}"; do
    int_values+=("$val")
done

# Print the integer values
echo "The integer values are: ${int_values[@]}"