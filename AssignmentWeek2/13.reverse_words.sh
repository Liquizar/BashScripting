#!/bin/bash

################################################################################
# Script: reverse_words.sh
# Description: This script reads a sentence from the user and prints each word
#              of the sentence in reverse order.
# Author: Amit Yadav
# Date: 22-02-2024
################################################################################

# Function to reverse a word
reverse_word() {
    local word="$1"
    local reversed=""
    for (( i=${#word}-1; i>=0; i-- )); do
        reversed+="${word:$i:1}"
    done
    echo "$reversed"
}

# Prompt user to enter a sentence
read -p "Enter a sentence: " sentence

# Split sentence into words and print each word in reverse order
for word in $sentence; do
    reversed_word=$(reverse_word "$word")
    echo -n "$reversed_word "
done

echo ""
