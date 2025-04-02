#!/bin/bash
planet=$(echo "$1" | awk '{print tolower($0)}')
declare -A moons
moons=(
    [mercury]=0
    [venus]=0
    [earth]=1
    [mars]=2
    [jupiter]=98
    [saturn]=83
    [uranus]=27
    [neptune]=14
)
if [[ -n "${moons[$planet]+x}" ]]; then
    echo "Planet $1 has ${moons[$planet]} moon(-s)"
else
    echo "This planet does not exist!"
    exit 1
fi

