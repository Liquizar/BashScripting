#!/bin/bash

################################################################################
# Script: add_new_user.sh
# Description: This script adds a new user to the system by taking username,
#              password, and home directory as input. It checks for existing
#              usernames and handles errors appropriately.
# Author: Amit Yadav
# Date: 22-02-2024
################################################################################

# Function to check if username already exists
check_existing_username() {
    if grep -q "^$1:" /etc/passwd; then
        echo "Error: Username '$1' already exists."
        exit 1
    fi
}
 
# Function to add a new user
add_new_user() {
    username="$1"
    password="$2"
    home_directory="$3"
 
    # Check if home directory exists
    if [ ! -d "$home_directory" ]; then
        echo "Error: Home directory '$home_directory' does not exist."
        exit 1
    fi
 
    # Check if username already exists
    check_existing_username "$username"
 
    # Add the new user
    echo "Adding new user '$username'..."
    sudo useradd -m -d "$home_directory" -s /bin/bash "$username"
    echo "$username:$password" | sudo chpasswd
 
    echo "User '$username' added successfully."
}
 
# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This script must be run as root."
    exit 1
fi
 
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""
read -p "Enter home directory: " home_directory

add_new_user "$username" "$password" "$home_directory"