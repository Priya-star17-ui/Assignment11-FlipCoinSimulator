#!/bin/bash -x
#Head=1
#Tail=0
i=1
flipHead=0
flipTail=0
while [ $i -le 20 ]
do
        coinCheck=$(($RANDOM%2))
	if [[ $coinCheck -eq 1 ]]
	then
		flipHead=$(( $flipHead + 1 ))
		if [[ $flipHead -eq 11 ]]
		then
			echo "head wins"
		fi  
	else
		flipTail=$(( $flipTail + 1 ))
		if [[ $flipTail -eq 11 ]]
		then
			echo "tail wins"
		fi
	fi
	echo "Total head wins" $flipHead
	echo "Total tail wins" $flipTail
	((i++))
done
