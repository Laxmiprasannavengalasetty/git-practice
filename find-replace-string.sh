#!/bin/bash

if [ "$#" -ne 3 ]; then  # 1. directory 2. find string 3. replace string

   echo "Usage: <directory> <find_string> <replace_string>"
    exit 1;
fi

directory="$1"
search_string="$2"
replace_string="$3"
if [ ! -d "$directory" ]; then
 echo " Directory not found"
 exit 1;

fi

# iterate over the all .txt files in that directory
for file in "$directory"/*.txt;
 do
   if [ -f "$file"]; then
    echo "processing file: $file"
    sed -i "s/${search_string}/${replace_string}/g" "$file"
   fi
done
echo "Replacement completed"