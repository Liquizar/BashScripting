#!/bin/bash

#####################################################################################
# Script: file_check.sh
# Description: This script takes a filename as input and checks if the file exists.
#              If it does, it displays the file size and permissions;
#              if not, it creates the file.
# Author: Amit Yadav
# Date: 22-02-2024
#####################################################################################

# Function to check if file exists
check_file() {
    if [ -e "$1" ]; then
        echo "File '$1' exists."
        echo "File size: $(stat -c %s "$1") bytes"
        echo "Permissions: $(stat -c %a "$1")"
    else
        echo "File '$1' does not exist. Creating the file..."
        touch "$1"
        echo "File '$1' created."
    fi
}

# Check if filename provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

check_file "$filename"
