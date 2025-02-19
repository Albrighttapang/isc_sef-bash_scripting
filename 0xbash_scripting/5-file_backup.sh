#!/bin/bash
echo "Please enter source directory"
read source
 if [ ! -d "$source" ]; then
echo "Your source directory does not exist"
fi
echo "Please enter backup destination"
read destination
if [ ! -d "$destination" ]; then
echo "That destination does not exist"
mkdir "$destination"
fi
if [ ! -w "$destination" ]; then
echo "The destination is not writable"
fi
cp  -r $source/* $destination
if [ $? -eq 0 ]; then
echo "Backup was successful"
else
echo "Backup was unsuccessful"
fi

