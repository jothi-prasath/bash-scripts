#!/bin/bash

# Check if the script is executed with sudo because we are dealing with root files
if [[ $EUID -ne 0 ]]; then
    echo "This script requires root privileges. Please run with sudo."
    exit 1
fi

# Get the current folder path
current_folder="$(pwd)"

# List of files and directories to ignore
ignore_list=(
    ".git"
    "README.md"
    "LICENSE"
    "*.sh"
)

# Iterate over each file in the current folder
for file in "$current_folder"/*; do
    # Check if the item is a file (not a directory)
    if [ -f "$file" ]; then
        # Extract the file name without the path
        filename=$(basename "$file")
        
        # Check if the file should be ignored
        should_ignore=false
        for ignore_item in "${ignore_list[@]}"; do
            if [[ "$filename" == $ignore_item ]]; then
                should_ignore=true
                break
            fi
        done
        
        # Remove existing file in /usr/local/bin if not ignored
        if ! "$should_ignore"; then
            if [ -f "/usr/local/bin/$filename" ]; then
                sudo rm "/usr/local/bin/$filename"
            fi
            # Create the symbolic link
            sudo ln -sv "$file" "/usr/local/bin/$filename"
        fi
    fi
done
