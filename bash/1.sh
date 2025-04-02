#!/bin/bash
ftime=$1
file=$2
while [ $ftime -ne 0 ]
do 
	loadavg=$(cat /proc/loadavg)
	dt=$(date '+%Y.%d.%m %H:%S')
	echo "$dt $loadavg" >> "$2"
	((ftime--))
	sleep 1
done
