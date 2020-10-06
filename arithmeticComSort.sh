#!/bin/bash

echo "enter the values of a, b, c"
read a
read b
read c

uc1=$(($a+$b*$c))

echo $uc1

uc2=$(($a*$b+$c))

echo $uc2

uc3=$(($c+$a/$b))

echo $uc3

uc4=$(($a%$b+$c))

echo $uc4

key=0
dictionary[key++]=$uc1
dictionary[key++]=$uc2
dictionary[key++]=$uc3
dictionary[key++]=$uc4


for((key=0; key<=${#dic[@]}; key++))
do
array[key]=${dic[key]}
done
echo "${array[@]}"

