#!/bin/bash

str1=$1
str2=$2
echo "The lengths of first argument string is ${#str1}"
append_str="${str1} ${str2}"
echo "Appending first and second arg '${append_str}'"
#str:start:end
echo "Substring is ${append_str:7:1} "

