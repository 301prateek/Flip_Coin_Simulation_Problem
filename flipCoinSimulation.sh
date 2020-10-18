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

#While loop checking minimum difference is 2 and display winner which is greater.
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

#Taking difference between heads and tails
	diff1=$(($heads - $tails))
	diff2=$(($tails - $heads))

	echo "Heads count: $heads"
	echo "Tails count: $tails"

	if [ $heads -eq $tails ]
	then
		continue
	fi
	if [ $diff1 -eq 2 -o $diff2 -eq 2 ]
	then
		if [ $tails -lt $heads ]
		then
			echo "Heads wins => total: $heads"
			break
		elif [ $tails -gt $heads ]
		then
			echo "Tails wins => total: $tails"
			break
		fi
	fi
done


