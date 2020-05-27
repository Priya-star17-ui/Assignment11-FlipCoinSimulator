#!/bin/bash -x


declare -A flipHHH
declare -A flipHHT
declare -A flipHTT
declare -A flipTTT
declare -A flipTTH
declare -A flipTHH

read -p "Enter number of toss " :toss

for((i=0;i<=$toss;i++))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
	coin3= $((RANDOM%2))
	 if [[ $coin1 -eq 1 ]]
	then
		if [[ $coin2 -eq  1 ]]
		then
			if [[ $coin3 -eq  1 ]]
			then
			flipH["HHH"]=$(($(flipHHH["HHH"] + 1 ))
			else
			flipHHT["HHT"]=$(($(flipHHH["HHT"] + 1 ))
			fi
		else
			flipHTT["HTT "]=$(($(flipHT["HTT"] + 1 ))
		fi
	else
		if [[ $coin2 -ne 1 ]]
		then
			flipTHH["THT"]=$(($(flipTHT["THT"] + 1 ))
		else
			flipTTH["TTH"]=$(($(flipTTH["TTH"] + 1 ))
		fi
			flipTTT["THT"]=$(($(flipHT["TTT"] + 1 ))
	fi
	
	echo "${flipHHH[@]}"
	echo "${flipHHT[@]}"
	echo "${flipHTT[@]}"
	echo "${flipTHH[@]}"
	echo "${flipTTH[@]}"
	echo "${flipTTT[@]}"
	
	
done

echo  "win percentage of the doublet coin toss:"

perHHH=`echo "scale=2;((${flipHHH[@]} /$toss))" | bc -1 `
echo "percentage of HHH :" |echo "scale=2;(($perHHH *100))" |bc -1
perHHT=`echo "scale=2;((${flipHHT[@]} /$toss))" | bc -1 `
echo "percentage of HHT :" |echo "scale=2;(($perHHT*100))" |bc -1
perHTT=`echo "scale=2;((${flipHTT[@]} /$toss))" | bc -1 `
echo "percentage of HHT:" |echo "scale=2;(($perHHT *100))" |bc -1
perTHH=`echo "scale=2;((${flipTHH[@]} /$toss))" | bc -1 `
echo "percentage of THH :" |echo "scale=2;(($perTHH *100))" |bc -1
perTTH=`echo "scale=2;((${flipTTH[@]} /$toss))" | bc -1 `
echo "percentage of TTH :" |echo "scale=2;(($perTTH *100))" |bc -1
perTTT=`echo "scale=2;((${flipTT[@]} /$toss))" | bc -1 `
echo "percentage of TTT :" |echo "scale=2;(($perTTT *100))" |bc -1





