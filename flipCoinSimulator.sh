##!/bin/bash -x
loop=0
Head=0
Tail=0
flip=21
coin_flip()
{
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
}
check_diff()
{
	if [ $Head -gt $Tail ]
	then
		diff=$((Head-Tail))
	else
		diff=$((Tail-Head))
	fi
}
print()
{
	check_diff
	echo "difference between Head and Tail is $diff"
        echo "Total Tail Wins out of $loop is $Tail"
        echo "Total Head Wins out of $loop is $Head"
}
while (( $Head < $flip && $Tail < $flip ))
do
        coin_flip
done
if [ $Head -gt $Tail ]
then
	echo "Head Winner "
	print
elif [ $Head -lt $Tail ]
then
	echo "Tail Winner "
	print
else
	echo "Tie game"
	print
	while (($diff<=2))
	do
		coin_flip
		check_diff
	done
	echo "if while done"
	if [ $Head -gt $Tail ]
	then
	        echo "Head Winner "
	        print
	elif [ $Head -lt $Tail ]
	then
        	echo "Tail Winner "
        	print
	fi

fi
