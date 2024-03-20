#!/bin/bash

if [ $# -lt 2 ]; then
    exit 1
else
    mkdir -p "$(dirname "$1")"
    echo $2 > $1
    if [ $? -ne 0 ]; then
        echo Could not create file $2
    fi
fi

