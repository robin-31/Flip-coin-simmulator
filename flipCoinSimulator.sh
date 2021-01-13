#!/bin/bash -x
echo "welcome to flip coin problem"
isHead=1
headcounter=0
tailcounter=0
deciderhead=0
decidertail=0
deciderresult=2
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
#for checking tie condition is working properly
#headcounter=5
#tailcounter=5
if [ $headcounter -eq $tailcounter ]
then
	echo "it's tie"
	while [[ $deciderhead -ne $deciderresult && $decidertail -ne $deciderresult ]]
	do

		flipcoin=$((RANDOM%2))
		if [ "$isHead" -eq "$flipcoin" ]
		then
			echo "it's head"
			((deciderhead++))
		else
			echo "it's tail"
			((decidertail++))
		fi
	done
	echo $deciderhead
	echo $decidertail
elif [ $tailcounter -eq $maxwin ]
then
	echo "tail is winner $tailcounter"
elif [ $headcounter -eq $maxwin ]
then
	echo "head is winner $headcounter"
fi
