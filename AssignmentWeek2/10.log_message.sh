#!/bin/bash

###############################################################################
# Script: log_message.sh
# Description: This script logs the current date and time along with a custom
#              message to a specified log file. It handles log rotation and
#              prevents the log file from growing too large.
# Author: Amit Yadav
# Date: 22-02-2024
###############################################################################

# Maximum number of lines in the log file before rotation
MAX_LINES=1000

# Function to log message
log_message() {
    local log_file="$1"
    local message="$2"
    local timestamp="$(date +'%Y-%m-%d %H:%M:%S')"
    
    # Check if log file exists, create if not
    if [ ! -f "$log_file" ]; then
        touch "$log_file"
    fi

    # Check if log file exceeds maximum number of lines
    if [ $(wc -l < "$log_file") -ge "$MAX_LINES" ]; then
        # Rename current log file with timestamp
        mv "$log_file" "${log_file}_$(date +'%Y%m%d_%H%M%S')"
        touch "$log_file"  # Create new log file
    fi

    # Log message with date and time
    echo "$timestamp - $message" >> "$log_file"
}

# Check if log file provided as argument
if [ $# -ne 2 ]; then
    echo "Usage: $0 <log_file> <message>"
    exit 1
fi

log_file="$1"
message="$2"

log_message "$log_file" "$message"
