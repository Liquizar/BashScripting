#!/bin/bash

###############################################################################################
# Script: sentence_analysis.sh
# Description: This script accepts a sentence as input and prints the number of words in it,
#              along with the number of vowels and consonants.
# Author: Amit Yadav
# Date: 22-02-2024
###############################################################################################

# Function to count vowels
count_vowels() {
    input="$1"
    vowels=$(echo "$input" | tr -cd 'aeiouAEIOU' | wc -c)
    echo "$vowels"
}

# Function to count consonants
count_consonants() {
    input="$1"
    consonants=$(echo "$input" | tr -cd 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ' | wc -c)
    echo "$consonants"
}

echo "Enter a sentence:"
read -r sentence

# Count words
word_count=$(echo "$sentence" | wc -w)

# Count vowels and consonants
vowels_count=$(count_vowels "$sentence")
consonants_count=$(count_consonants "$sentence")

echo "Number of words: $word_count"
echo "Number of vowels: $vowels_count"
echo "Number of consonants: $consonants_count"
