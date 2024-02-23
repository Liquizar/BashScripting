#!/bin/bash

########################################################################
# Script: backup_dir.sh
# Description: This script creates a timestamped backup of a directory
#              by compressing it into a tarball.
# Author: Amit Yadav
# Date: 22-02-2024
########################################################################

# Function to create timestamped backup
backup_directory() {
    local directory="$1"
    local timestamp=$(date +"%Y%m%d_%H%M%S")
    local backup_file="backup_${timestamp}.tar.gz"
    tar -czf "$backup_file" "$directory"
    echo "Backup created: $backup_file"
}
 
# Check if directory provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi
 
directory="$1"
 
backup_directory "$directory"