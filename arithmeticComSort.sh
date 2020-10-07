#!/bin/bash

echo "enter the values of a, b, c"
read a
read b
read c

## useCase1

uc1=$(($a+$b*$c))

echo $uc1

## useCase2

uc2=$(($a*$b+$c))

echo $uc2

## useCase3

uc3=$(($c+$a/$b))

echo $uc3

## useCase4

uc4=$(($a%$b+$c))

echo $uc4

## useCase5
declare -A dictionary

dictionary[1]=$uc1
dictionary[2]=$uc2
dictionary[3]=$uc3
dictionary[4]=$uc4
echo "the values are stored in dictionary ${dictionary[@]}"
## useCase6
key=0
for((i=0; i<=${#dictionary[@]}; i++))
do
array[i]=${dictionary[$key]}
((key++))
done
echo "the values stored in array are ${array[@]}"

## sort in ascending order
	for((i=0; i<4; i++))
   do
      for((j=0; j<4; j++))
      do
         if [ ${array[j]} -lt ${array[$((j+1))]} ]
         then
            temp=${array[j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
         fi
      done
   done
echo "the values of array are sorted in decending order ${array[@]}"

## sort in decending order

for((i=0; i<4; i++))
   do
      for((j=0; j<4; j++))
      do
         if [ ${array[j]} -gt ${array[$((j+1))]} ]
         then
            temp=${array[j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
         fi
      done
   done
echo "the values of array are sorted in acending order ${array[@]}"
