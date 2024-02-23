#!/bin/bash

########################################################################################
# Script: directory_backup.sh
# Description: This script takes a directory as input and creates a compressed backup
#              of that directory using tar and gzip.
# Author: Amit Yadav
# Date: 22-02-2024
########################################################################################

# Function to create compressed backup
backup_directory() {
    # Check if directory exists
    if [ ! -d "$1" ]; then
        echo "Error: Directory '$1' not found."
        exit 1
    fi

    # Create backup filename
    backup_file="backup_.tar.gz"

    # Create compressed backup
    echo "Creating compressed backup of directory '$1'..."
    tar -czf "$backup_file" "$1"

    echo "Backup created: $backup_file"
}

# Check if directory provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

backup_directory "$1"
