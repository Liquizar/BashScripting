#!/bin/bash

#######################################################################################
# Script: system_info.sh
# Description: This script displays the current date and time, the logged-in users,
#              and the system uptime.
# Author: Amit Yadav
# Date: 22-02-2024
#######################################################################################

# Function to display system information
display_system_info() {
    echo "Current Date and Time: $(date +"%Y-%m-%d %T")"
    echo ""
    echo "Logged-in Users:"
    who
    echo ""
    echo "System Uptime:"
    uptime
}

display_system_info
