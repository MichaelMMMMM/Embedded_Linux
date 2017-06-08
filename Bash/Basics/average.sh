#!/bin/bash

# average.sh
# Taking user input in order to calculate an average.

AVERAGE="0"
SUM="0"
NUM="0"
INPUT="0"

while true; do

	echo "Please enter a number ('q' to quit): "; read INPUT

	if (("$INPUT" == "q")); then
		echo "Average: $AVERAGE"
		break
	else
		SUM=$[$SUM + $INPUT]
		NUM=$[$NUM + 1]
		AVERAGE=$[$SUM / $NUM]
		echo "Sum: $SUM, Num: $NUM, Average: $AVERAGE"
	fi

done

echo "Exiting."

