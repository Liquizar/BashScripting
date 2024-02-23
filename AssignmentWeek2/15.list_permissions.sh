#!/bin/bash

#######################################################################################
# Script: list_permissions.sh
# Description: This script takes a directory name as input and lists all files
#              and subdirectories within that directory, along with their permissions.
# Author: Amit Yadav
# Date: 22-02-2024
#######################################################################################

# Function to list directory permissions
list_directory_permissions() {
    local directory="$1"
 
    # Check if directory exists
    if [ ! -d "$directory" ]; then
        echo "Error: Directory '$directory' does not exist."
        exit 1
    fi
 
    echo "Permissions   Filename"

    # List files and directories with permissions
    ls -l "$directory"
}
 
# Check if directory name provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi
 
directory="$1"
 
list_directory_permissions "$directory"