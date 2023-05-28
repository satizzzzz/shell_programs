#!/bin/bash

read -p "Enter no of rows: " row

for ((i=1;i<=$row;i++));do
  for ((j=1;j<=i;j++));do
    echo -n "$j "
  done
  echo
done
