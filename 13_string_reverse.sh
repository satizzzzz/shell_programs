#!/bin/bash

read -p "enter the string: " str

len=${#str}

echo $len
reversed=""

for ((i=$len-1;i>=0;i--)); do
    reversed=${reversed}${str:i:1}
done
echo "Reverse of string $reversed"


