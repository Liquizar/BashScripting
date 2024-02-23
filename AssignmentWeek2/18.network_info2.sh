#!/bin/bash

###########################################################################
# Script: network_info2.sh
# Description: This script displays the current IP address, hostname,
#              and network interfaces of the system using the ip command.
# Author: Amit Yadav
# Date: 22-02-2024
###########################################################################

# Function to display network information
display_network_info() {
    echo "Current IP Address: $(hostname -I)"
    echo "Hostname: $(hostname)"
    echo "Network Interfaces:"
    ip -o link show | awk -F ': ' '{print $2}'
}
 
display_network_info