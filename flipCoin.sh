#!/bin/bash -x
isFlip=1
coin=$((RANDOM%2))
if [ $coin == $isFlip ]
then
	echo "Head"
else
	echo "Tail"
fi

