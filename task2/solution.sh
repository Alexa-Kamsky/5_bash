#!/bin/bash

DIR=$1

files=$(find "$DIR" -type f | wc -l)
dirs=$(find "$DIR" -type d | wc -l)
largest=$(find "$DIR" -type f -printf "%s %p\n" | sort -nr | head -n1)

largest_file=$(echo "$largest" | awk '{print $2}')
largest_size=$(echo "$largest" | awk '{print $1}')

echo "Files: $files"
echo "Dirs: $dirs"
echo "Largst: $largest_file ($largest_size bytes)"
