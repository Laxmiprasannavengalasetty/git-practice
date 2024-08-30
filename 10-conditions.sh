#!/bin/bash

f [ "$#" -ne 1 ]; # validating numbers if entered 3 so condition is true, so it prints enter two numbers only

    then
    echo "Usage: Enter number : "
    exit 1
fi


NUMBER=$1

if [ $NUMBER -gt 20 ] #gt, lt, eq, -ne, -ge, -le
then
    echo "Given number: $NUMBER is greater than 20"
else
    echo "Given number: $NUMBER is less than 20"
fi