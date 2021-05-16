#!/bin/bash -x

tails=0
heads=0
i=0
while [ true ]
do
	
	headOrTail=$((RANDOM%2))
	if [ $headOrTail -eq 0 ]
	then
		heads=$(($heads+1))
		echo heads
	else
		tails=$(($tails+1))
		echo tails
	fi

if [ $tails -ge 21 ]
then
	echo "Tails : "$(($tails-$heads))
	break
elif [ $heads -ge 21 ]
then
	echo "Heads :"$(($heads-$tails))
	break
fi
done
echo "Tails count: "$tails "and Heads count :"$heads
