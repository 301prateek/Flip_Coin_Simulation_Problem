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
	
	if [ $coin -eq 1 -a $heads -le 21 ]
	then
		heads=$(($heads + 1))

	elif [ $coin -eq 0 -a $tails -le 21 ]
	then
		tails=$(($tails + 1))
	fi

	if [ $heads -eq 21 ]
	then
		diff=$(($heads - $tails))
		echo "Heads won by points: $diff"
		echo "Heads wins 21 times"
		break
	elif [ $tails -eq 21 ]
	then
		diff=$(($tails - $heads))
		echo "tails won by point: $diff"
		echo "Tails wins 21 times"
		break
	fi

done

