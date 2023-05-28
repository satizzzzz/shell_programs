#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error!! No arguments"
fi

largest=$1

for arg in "$@"; do
    if [ $arg -gt $largest ]; then
        largest=$arg
    fi
done

smallest=$1

for arg in $@; do
    if [ $arg -lt $smallest ]; then
        smallest=$arg
    fi
done

echo "The largest number is $largest"
echo "The smallest number is $smallest"


