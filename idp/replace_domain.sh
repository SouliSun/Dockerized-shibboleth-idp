#!/bin/bash

# Function to replace "localhost" with a given domain name in a file
replace_localhost_with_domain() {
    local file="$1"
    local domain="$2"
    sed -i "s/localhost/$domain/g" "$file"
}

# Check if at least one argument (domain name) and one directory are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <domain_name> <directory1> [<directory2> ...]"
    exit 1
fi

domain_name="$1"

# Shift the arguments to skip the first argument (domain name) and process the directories
shift

# Loop through the provided directories
for directory in "$@"; do
    # Replace "localhost" with the provided domain name in all files in the given directory and its subdirectories
    find "$directory" -type f -exec grep -l "localhost" {} + | while read -r file; do
        replace_localhost_with_domain "$file" "$domain_name"
    done
done

echo "Replacement complete. All occurrences of 'localhost' have been replaced with '$domain_name' in the specified directories."

