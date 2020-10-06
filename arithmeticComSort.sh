#!/bin/bash

	for ((i=0; i<${#dictionary[$key]}; i++))
	do
		array[((i))]=${dictionary[$key]}
	done
echo "${array[i]}"
