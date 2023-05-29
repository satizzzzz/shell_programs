#!/bin/bash

for arg in $@;do
    count=${#arg}
    echo "The count of $arg is $count"
done