#!/bin/bash

# Assuming your file is named packages.txt

# Check if the file exists
if [ ! -f "packages.txt" ]; then
    echo "File packages.txt not found."
    exit 1
fi

# Read each line in the file
while read -r line; do
    # Extract package name, version, and identifier
    if [[ $line == *py* ]];then
    package=$(echo "$line" | awk '{print $1}')
    version=$(echo "$line" | awk '{print $2}')
    echo "$package==$version"
    fi

done < packages.txt
