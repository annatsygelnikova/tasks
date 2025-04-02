#!/bin/bash
path=$1
if [ ! -d "$path" ]; then
    echo "Error: The specified path does not exist."
    exit 1
fi
 
for subdir in "$path"/*/; do
    if [ -d "$subdir" ]; then
        subdir_name=$(basename "$subdir")
        file_path="$path/$subdir_name.txt"
        count=$(find "$subdir" -mindepth 1 -maxdepth 1 | wc -l)
        echo "$count" > "$file_path"
    fi
done
