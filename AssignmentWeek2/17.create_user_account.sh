#!/bin/bash

###############################################################################
# Script: create_user_account.sh
# Description: This script prompts the user to enter a username and password,
#              then creates a new user account with the provided credentials.
# Author: Amit Yadav
# Date: 22-02-2024
###############################################################################

# Function to create new user account
create_user_account() {
    local username="$1"
    local password="$2"
    sudo useradd -m "$username"
    echo "$username:$password" | sudo chpasswd
    echo "User account '$username' created successfully."
}
 
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""

create_user_account "$username" "$password"