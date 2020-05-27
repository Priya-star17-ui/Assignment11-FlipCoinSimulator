#!/bin/bash -x


declare -A flipHH
declare -A flipHT
declare -A flipTH
declare -A flipTT

read -p "Enter number of toss " :toss

for((i=0;i<=$toss;i++))
do
	coin1=$((RANDOM%2))
	coin2=$((RANDOM%2))
	 
	 if [[ $coin1 -eq 1 ]]
	then
		if [[ $coin2 -eq  1 ]]
		then
			flipHH["HH"]=$(($(flipHH["HH"] + 1 ))
		else
			flipHT["HT"]=$(($(flipHT["HT"] + 1 ))
		fi
	else
		if [[ $coin2 -eq 1 ]]
		then
			flipHH["TH"]=$(($(flipHH["TH"] + 1 ))
		else
			flipHT["TT"]=$(($(flipHT["TT"] + 1 ))
		fi
	fi
	
	echo "${flipHH[@]}"
	echo "${flipHT[@]}"
	echo "${flipTH[@]}"
	echo "${flipTT[@]}"
	
done

echo  "win percentage of the doublet coin toss:"

perHH=`echo "scale=2;((${flipHH[@]} /$toss))" | bc -1 `
echo "percentage of HH :" |echo "scale=2;(($perHH *100))" |bc -1
perHT=`echo "scale=2;((${flipHT[@]} /$toss))" | bc -1 `
echo "percentage of HT :" |echo "scale=2;(($perHT *100))" |bc -1
perTH=`echo "scale=2;((${flipTH[@]} /$toss))" | bc -1 `
echo "percentage of TH :" |echo "scale=2;(($perTH *100))" |bc -1
perTT=`echo "scale=2;((${flipTT[@]} /$toss))" | bc -1 `
echo "percentage of TT :" |echo "scale=2;(($perTT *100))" |bc -1





