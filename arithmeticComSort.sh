#!/bin/bash


for((key=0; key<=${#dic[@]}; key++))
do
array[key]=${dic[key]}
done
echo "${array[@]}"

