#!/bin/bash

NUMBER1=$1
NUMBER2=$2

echo "before swaping a=$NUMBER1 and b=$NUMBER2" 

a=$(($NUMBER1+$NUMBER2))
b=$(($NUMBER1-$NUMBER2))
a=$(($NUMBER1-$NUMBER2))

echo "After swap a=$a and b=$b"