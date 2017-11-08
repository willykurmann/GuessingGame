#!/usr/bin/env bash
# guessinggame.sh

function check_user_input() {
	number_of_files=$(ls -l1 | wc -l)
	result=1

	if [[ $1 -eq $number_of_files ]]
	then
		echo "Congrat's, you guessed the right number of files"
		result=0
	elif [[ $1 -gt $number_of_files ]]
	then
		echo "Your number is to high"
	else
		echo "Your number is too low"
	fi
}

result=-1

while [[ $result -ne 0 ]]
do
	echo -n "Can you guess how many files are in the current directory: "
	read user_input
	check_user_input $user_input
done