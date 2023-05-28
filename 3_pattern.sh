#!/bin/bash

read -p "Enter no of rows: " row
count=1

for ((i=1;i<=$row;i++));do
   for((j=1;j<=i;j++));do
    echo -n "$count "
    ((count++))
   done
   echo
done
