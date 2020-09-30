##!/bin/bash -x
loop=0
Head=0
Tail=0
flip=21
while [ $loop -lt $flip ]
do
	n=$((RANDOM%2))
	if [ $n -eq 1 ]
	then
		echo "Head Winner."
		Head=$((Head+1))
	else
		echo "Tail Winner."
		Tail=$((Tail+1))
	fi
	loop=$((loop+1))
done
echo "Total Head Wins out of $flip is $Head"
echo "Total Tail Wins out of $flip is $Tail"
