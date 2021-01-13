#!/bin/bash -x
echo "welcome to flip coin problem"
isHead=1
headcounter=0
tailcounter=0
maxwin=21
while [[ $headcounter -ne $maxwin && $tailcounter -ne $maxwin ]]
do
	flipcoin=$((RANDOM%2))
	if [ "$isHead" -eq "$flipcoin" ]
	then
		((headcounter++))
	else
		((tailcounter++))
	fi
done
if [ $headcounter -eq $tailcounter ]
then
	echo "it's tie"
elif [ $tailcounter -eq $maxwin ]
then
	echo "tail is winner $tailcounter"
elif [ $headcounter -eq $maxwin ]
then
	echo "head is winner $headcounter"
fi
