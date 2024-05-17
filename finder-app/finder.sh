#!/bin/sh

if [[ -z "$1" ]] || [[ -z "$2" ]] || [[ ! -d "$1" ]]; then
    echo "arguments not specified or folder does not exist"
    exit 1
fi

count=$(find $1 -type f | wc -l)
lines=$(grep -r "$2" "$1" | wc -l)

echo "The number of files are $count and the number of matching lines are $lines"
