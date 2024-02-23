#!/bin/bash

##################################################################################
# Script: copy_file_contents.sh
# Description: This script takes two filenames as input arguments and checks if
#              the first file exists. If it does, the script copies the contents
#              of the first file to the second file; if not, it displays an error
#              message.
# Author: Amit Yadav
# Date: 22-02-2024
##################################################################################

# Function to copy file contents
copy_file_contents() {
    if [ -e "$1" ]; then
        cp "$1" "$2"
        echo "Contents of '$1' copied to '$2'."
    else
        echo "Error: File '$1' does not exist."
    fi
}

# Check if two filenames provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_file> <destination_file>"
    exit 1
fi

source_file="$1"
destination_file="$2"

copy_file_contents "$source_file" "$destination_file"
