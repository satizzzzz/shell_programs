#!/bin/bash

echo "Adding of number using bc command"

read -p "enter first number " first
read -p "Enter second number " second

sum_bc=`echo "$first+$second" | bc`
echo "The sum is $sum_bc"

echo "Adding using expr command"

sum_expr=$(expr $first + $second )

echo "sum is $sum_expr"

echo "Adding using Normal method"

sum_normal=$(($first + $second))
echo "sum is $sum_normal"
