#!/bin/bash

calc_val=`echo "$1 $2 $3" | bc`

echo "The output is $calc_val"