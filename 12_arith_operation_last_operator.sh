#!/bin/bash

read -p "Enter the string: " str

oper=${str:(-1):5}

echo "$oper"