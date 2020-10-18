#!/bin/bash -x
#Author: Prateek Patil
#Flip Coin Simulation Problem

#Wlecome message
echo "Welcome Flip Coin Simulation"

#Random function to take two random values.
coinFlip=$((RANDOM%2))
tails=0
heads=1

#Using if condition to display heads or tails as winner
if [ $coinFlip -eq $heads ]
then
	echo "Heads Wins"
else
	echo "Tails Wins"
fi

#Loop to show number of times head and tail has won
headCount=0
tailCount=0
for(( i=1; i<=10; i++ ))
do
	coin=$((RANDOM%2))
	if [ $coin -eq $heads ]
	then
		headCount=$(($headCount + 1))
	else
		tailCount=$(($tailCount + 1))
	fi
done
echo "Heads won: $headCount times"
echo "Tails won: $tailCount times"

heads=0
tails=0
while(true)
do
	coin=$((RANDOM%2))

	if [ $coin -eq 1 ]
	then
		heads=$(($heads + 1))

	elif [ $coin -eq 0 ]
	then
		tails=$(($tails + 1))
	fi

	diff1=$(($heads - $tails))
	diff2=$(($tails - $heads))
	if [ $heads -eq $tails ]
	then
		continue
	fi
	if [ $diff1 -eq 2 -o $diff2 -eq 2 ]
	then
		if [ $tails -lt $heads ]
		then
			echo "Tails wins"
			break
		elif [ $tails -gt $heads ]
		then
			echo "Heads wins"
			break

		fi
	fi

done

