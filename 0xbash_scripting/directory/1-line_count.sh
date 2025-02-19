#!/bin/bash
if [ $# -eq 0 ]; then
echo "Error; Directory path not provided"
exit 1
fi
directory=$1

if [ ! -d "$directory" ]; then
echo "Error; Directory '$directory' does not exist"
exit 1
fi

for file in "directory"/*; do
if [ -f "$file" ]; then
line_count=$(wc -l < "$file")
echo "$file: $line_count lines"
fi
done
