#!/bin/bash


	for((i=0; i<4; i++))
   do
      for((j=0; j<i-1; j++))
      do
         if [ ${array[j]} -lt ${array[$((j+1))]} ]
         then
            temp=${array[$j]}
            array[j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
         fi
      done
   done
echo "${array[@]}"
