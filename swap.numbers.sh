#!/bin/bash

if [ "$#" -ne 2 ]; # validating numbers if entered 3 so condition is true, so it prints enter two numbers only

    then
    echo "Usage: Enter two numbers only: "
    exit 1
fi

NUMBER1=$1
NUMBER2=$2

echo "before swaping $NUMBER1 and $NUMBER2" 

NUMBER1=$(($NUMBER1 + $NUMBER2))
NUMBER2=$(($NUMBER1 - $NUMBER2))
NUMBER1=$(($NUMBER1 - $NUMBER2))

echo "After swap $NUMBER1 and $NUMBER2"