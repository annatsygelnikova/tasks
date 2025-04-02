#!/bin/bash

path="/var/log"
 
for file in $path/*.log; do
    if [ -f "$file" ]; then
        echo "Последняя строка из $file:" >> logs.log
        tail -n 1 "$file" >> logs.log
        echo "" >> logs.log
    fi
done

