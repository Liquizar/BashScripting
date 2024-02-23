#!/bin/bash

##########################################################################
# Script: network_info.sh
# Description: This script displays the current IP address, subnet mask,
#              and default gateway of the system.
# Author: Amit Yadav
# Date: 22-02-2024
##########################################################################

# Function to display network information
display_network_info() {
    echo "IP Address: $(ip -4 addr show | grep inet | awk '{print $2}' | grep -v "127.0.0.1" | cut -d "/" -f 1)"
    echo "Subnet Mask: $(ip -4 addr show | grep inet | awk '{print $2}' | grep -v "127.0.0.1" | cut -d "/" -f 2)"
    echo "Default Gateway: $(ip route | grep default | awk '{print $3}')"
}

display_network_info
