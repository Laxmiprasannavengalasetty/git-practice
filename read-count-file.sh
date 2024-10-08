#!/bin/bash

#Check if the filename argument is provided
if [ "$#" -ne 1 ];
then
   echo "Please enter file name to search words "
   exit 1
fi

# Read the filename from the first argument
filename=$1
if [ ! -f "$filename" ];

   then
   echo " file not found "
   exit 1

fi

# Count the number of each word in the file
echo "Counting word frequences in $filename"
cat "$filename" | \
tr -c '[:alnum:]' '[\n*]' | \
awk 'NF' | \
sort | \
uniq -c | \
sort -nr
