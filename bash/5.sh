#!/bin/bash

path="/var/log"
 
for file in $path/*.log; do
    if [ -f "$file" ]; then
        line=$(tail -n 1 $file)
        echo "$line" >> logs.log
    fi
done

