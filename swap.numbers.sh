#!/bin/bash

if [ "$#" -ne 2 ];

    then
    echo "Usage: $0 NUMBER1 NUMBER2"
    exit 1
fi


NUMBER1=$1
NUMBER2=$2

echo "before swaping a=$NUMBER1 and b=$NUMBER2" 

NUMBER1=$(($NUMBER1 + $NUMBER2))
NUMBER2=$(($NUMBER1 - $NUMBER2))
NUMBER1=$(($NUMBER1 - $NUMBER2))

echo "After swap a=$a and b=$b"