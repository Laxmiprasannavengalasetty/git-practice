#!/bin/bash


# index starts from 0, size is 3
Fruits=("appple" "Mango" "Orange") #Array

echo "First Fruit is : ${Fruits[0]}"
echo "Second Fruit is : ${Fruits[1]}"
echo "third Fruit is : ${Fruits[2]}"

echo "First Fruit is ${Fruits[@]}"