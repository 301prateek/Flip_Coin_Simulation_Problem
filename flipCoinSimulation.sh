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

