#!/bin/sh

if [[ -z "$1" ]] || [[ -z "$2" ]]; then
    echo "arguments not specified"
    exit 1
fi

install -Dv /dev/null $1
echo $2 > $1
