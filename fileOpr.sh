#write a script to check if the given string is a file or a directory or a link or if it doesn’t exist.

#!/bin/bash

# Prompt the user to enter a file or directory path
read -p "Enter a file or directory path: " path

# Check if the path exists
if [ ! -e $path ]
then
    echo "The path doesn't exist"
else
    # Check if the path is a file
    if [ -f $path ]
    then
        echo "The path is a file"
    # Check if the path is a directory
    elif [ -d $path ]
    then
        echo "The path is a directory"
    # Check if the path is a symbolic link
    elif [ -L $path ]
    then
        echo "The path is a symbolic link"
    else
        echo "The path is not a file, directory or symbolic link"
    fi
fi