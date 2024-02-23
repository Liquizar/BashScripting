#Print the content of the file in reverse

#!/bin/bash

echo "Enter the file name:"
read filename

if [ -f "$filename" ]; then
    tac "$filename"
else
    echo "Error: File not found"
fi
