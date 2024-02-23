#!/bin/bash

#############################################################################
# Script: log_monitor.sh
# Description: This script monitors a specified log file for any occurrences
#              of a given keyword and sends an email notification if found.
# Author: Amit Yadav
# Date: 22-02-2024
#############################################################################

# Function to monitor log file
monitor_log_file() {
    local log_file="$1"
    local keyword="$2"
    if grep -q "$keyword" "$log_file"; then
        echo "Keyword '$keyword' found in log file '$log_file'. Sending email notification..."
        
        # sending notification to an email
        local email_address="xyz@example.com"
        local subject="Keyword Found"
        local message="Keyword $keyword found in $log_file"
        echo "$message" | mail -s "$subject" "$email_address"
    else
        echo "Keyword '$keyword' not found in log file '$log_file'."
    fi
}

# Check if log file and keyword provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <log_file> <keyword>"
    exit 1
fi
 
log_file="$1"
keyword="$2"
 
monitor_log_file "$log_file" "$keyword"