#!/bin/bash

key=0
for((i=0; i<=${#dictionary[@]}; i++))
do
array[i]=${dictionary[$key]}
((key++))
done
echo "the values are stored in array ${array[@]}"

