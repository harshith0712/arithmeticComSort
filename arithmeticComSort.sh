#!/bin/bash

## usecase1

echo "enter the values of a, b, c"
read a
read b
read c

uc1=$(($a+$b*$c))

echo $uc1

uc2=$(($a*$b+$c))

echo $uc2
