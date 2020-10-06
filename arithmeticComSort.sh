#!/bin/bash


for((key=0; key<=${#dic[@]}; key++))
do
arr[key]=${dic[key]}
done
echo "${arr[@]}"

