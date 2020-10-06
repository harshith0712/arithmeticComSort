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

key=0
dictionary[key++]=$uc1
dictionary[key++]=$uc2
dictionary[key++]=$uc3
dictionary[key++]=$uc4

## useCase6

for((key=0; key<=${#dic[@]}; key++))
do
array[key]=${dic[key]}
done
echo "${array[@]}"

## sort in ascending order
	for((i=0; i<4; i++))
   do
      for((j=0; j<i-1; j++))
      do
         if [ ${array[j]} -gt ${array[$((j+1))]} ]
         then
            temp=${array[$j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
         fi
      done
   done
echo "${array[@]}"

## sort in decending order

for((i=0; i<4; i++))
   do
      for((j=0; j<i-1; j++))
      do
         if [ ${array[j]} -gt ${array[$((j+1))]} ]
         then
            temp=${array[$j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
         fi
      done
   done
echo "${array[@]}"

