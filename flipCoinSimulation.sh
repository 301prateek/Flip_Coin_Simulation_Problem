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

