#!/bin/bash -x

tails=0
heads=0
MAX_FLIP=5
num_of_flip=0
while [ $num_of_flip -le $MAX_FLIP ]
do
	((num_of_flip++))
	headOrTail=$((RANDOM%2))
	if [ $headOrTail -eq 0 ]
	then
		heads=$(($heads+1))
		echo "head"
	else
		tails=$(($tails+1))
		echo "Tail"
	fi
done

if [ $heads -gt $tails ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi

