#!/bin/bash -x

IS_HEAD=1
IS_TAIL=0

declare -A toss

i=0
coinCheck=$((RANDOM%4))
for (( i=0 ; i<=$flip; i++ ))
do
	if [[ $coinCheck -eq $IS_HEAD  ]]
	then
		head=$(($head+1))
	        echo "flipping head " $head 
		echo ${toss[$i]}=$head
	else
		tail=$((tail+1))
        	echo " flipping tail " $tail #${toss[tails]}
	fi
		echo  ${toss[$i]}=$tail
done
	echo ${toss[@]}
