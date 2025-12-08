#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Использовано: S0 <директория> <искать> <замена>"
  exit 1
fi

DIR=$1
SEARCH=$2
REPLACE=$3

find "$DIR" -type f -exec sed -i 's/\r$//' {} \;

find "$DIR" -type f -name "*.txt" -exec sed -i "s|${SEARCH}|${REPLACE}|g" {} \; 
echo "Замена прошла успешно"