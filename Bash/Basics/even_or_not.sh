#!/bin/bash

# even_or_not.sh
# Simple script which reads in numbers and tells the user wether they are even or not.

INPUT="0"

while true; do

	echo "Enter a number ('q' to quit): "; read INPUT

	if (("$INPUT" == "q")); then
		break
	else
		INPUT_MOD=$[$INPUT % 2]
		#if (( "$INPUT_MOD" == "0" )); then
		if (( "$[$INPUT % 2]" == "0" )); then
			echo "$INPUT is an even number."
		else
			echo "$INPUT is an uneven number."
		fi
	fi

done

echo "Exiting."
