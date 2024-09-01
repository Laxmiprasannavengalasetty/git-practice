#!/bin/bash

# Check if filename is provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

file="$1"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "File not found!"
  exit 1
fi

echo "File content:"
cat "$file"
echo

# Transpose the file using awk
awk '
{
    # Store each field of the current row in the array `a`
    for (i=1; i<=NF; i++) {
        a[NR, i] = $i
    }
    # Update the maximum number of fields encountered
    if (NF > max_fields) {
        max_fields = NF
    }
}
END {
       print "Transform of Rows to Column :" # Header for transposed data
    for (j=1; j<=max_fields; j++) {
        str = a[1, j]
        for (i=2; i<=NR; i++) {
            str = str " " (a[i, j] ? a[i, j] : "")
        }
        
        print str
    }   
}
'  "$file"

   echo "Columns to Rows: \n"  # original file 
   cat "$1" 

