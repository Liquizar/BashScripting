#Write a script to monitor the usage of the server memory, if the server memory reaches its threshold value (70%). It will send an email to the concerned person.

#!/bin/bash

# Set the threshold value for memory usage
threshold=70

# Get the current memory usage percentage
memory_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')

echo $memory_usage

Check if memory usage is above the threshold
if (( $(echo "$memory_usage > $threshold" | bc -l) )); then
# Send an email to the concerned person
    echo "Warning: Memory usage is above $threshold% on the server." | mail -s "Memory usage warning" concerned_person@example.com
fi