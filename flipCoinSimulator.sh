##!/bin/bash -x
loop=0
Head=0
Tail=0
flip=21
while (( $Head < $flip && $Tail < $flip ))
do
	n=$((RANDOM%2))
	if [ $n -eq 1 ]
	then
		#echo "Head Winner."
		Head=$((Head+1))
	elif [ $n -eq 0 ]
	then
		#echo "Tail Winner."
		Tail=$((Tail+1))
	fi
	loop=$((loop+1))
done
#Head=$Tail
if [ $Head -gt $Tail ]
then
	echo "Head Winner "
	echo "difference between Head and Tail is $((Head-Tail))"
	echo "Total Head Wins out of $loop is $Head"
	echo "Total Tail Wins out of $loop is $Tail"
elif [ $Head -lt $Tail ]
then
	echo "Tail Winner "
        echo "difference between Head and Tail is $((Tail-Head))"
	echo "Total Tail Wins out of $loop is $Tail"
	echo "Total Head Wins out of $loop is $Head"
else
	echo "Tie game"
	echo "Total Head Wins out of $loop is $Head"
        echo "Total Tail Wins out of $loop is $Tail"
	while (($((Head-Tail))<=2))
	do
		n=$((RANDOM%2))
        	if [ $n -eq 1 ]
        	then
        	        #echo "Head Winner."
        	        Head=$((Head+1))
        	elif [ $n -eq 0 ]
        	then
        	        #echo "Tail Winner."
        	        Tail=$((Tail+1))
	        fi
	        loop=$((loop+1))
	done
	echo "if while done"
	if [ $Head -gt $Tail ]
	then
	        echo "Head Winner "
	        echo "difference between Head and Tail is $((Head-Tail))"
	        echo "Total Head Wins out of $loop is $Head"
	        echo "Total Tail Wins out of $loop is $Tail"
	elif [ $Head -lt $Tail ]
	then
        	echo "Tail Winner "
        	echo "difference between Head and Tail is $((Tail-Head))"
        	echo "Total Tail Wins out of $loop is $Tail"
        	echo "Total Head Wins out of $loop is $Head"
	fi

fi
