#!/bin/bash

read -p "Enter the string: " str

oper=${str:(-1)}
len=${#str}
last=$(( $len - 1 )) 
str=${str:0:$last}

final=1

while [ $str -gt 0 ];do
    rem=$(( ${str} % 10 ))
    final=$(( ${final} ${oper} ${rem} ))
    str=$(( ${str} / 10 ))
done

echo $final
    