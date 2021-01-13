#!/bin/bash -x
echo "welcome to flip coin problem"
isHead=1
headcounter=0
tailcounter=0
for (( i=1; i<=10; i++ ))
do
	flipcoin=$((RANDOM%2))
	if [ "$isHead" -eq "$flipcoin" ]
	then
		echo "it's head you are winner"
		((headcounter++))
	else
		echo "it's tail you are losser"
		((tailcounter++))
	fi
done
echo $headcounter
echo $tailcounter
