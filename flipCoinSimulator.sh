##!/bin/bash -x
n=$((RANDOM%2))
if [ $n -eq 1 ]
then
	echo "Heads Winner."
else
	echo "Tails Winner."
fi
