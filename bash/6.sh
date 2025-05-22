#!/bin/bash

if [[ "$FOO" -eq 5 && "$BAR" -eq 1 ]]; then
	exit 1
fi

while [ ! -f "fix.txt" ]; do
	sleep 1
done 

echo "fix.txt created"
