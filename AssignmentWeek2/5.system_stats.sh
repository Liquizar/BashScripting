#!/bin/bash

########################################################################################
# Script: system_stats.sh
# Description: This script displays basic system information such as the
#              operating system, kernel version, CPU information, and total memory.
# Author: Amit Yadav
# Date: 22-02-2024
########################################################################################

# Function to display system information
display_system_info() {
    echo "Operating System: $(uname -o)"
    echo "Kernel Name: $(uname -s)"
    echo "Kernel Version: $(uname -r)"
    echo "CPU Information: $(lscpu | grep "Model name")"
    echo "Total Memory: $(free -h | awk '/Mem/{print $2}')"
}

display_system_info
