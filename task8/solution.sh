#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Использовано: $0 <директория_логи> <директория_архив>"
  exit 1
fi

DIR_LOG=$1
DIR_ARCHIVE=$2

mkdir -p "$DIR_ARCHIVE"

find "$DIR_LOG" -type f -name "*.log" -mtime +7 | while read file; do
  base=$(basename "file")
  gzip -c "file" > "DIR_ARCHIVE/$base.gz"
done
