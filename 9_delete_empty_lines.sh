#!/bin/bash

file=$1
bkp=${file}.tmp

sed '/^$/d' $file > $bkp

mv $bkp $file

cat $file