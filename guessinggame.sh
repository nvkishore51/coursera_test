#!/bin/sh

get_user_input(){
guess_files_count=0
echo "Guess, How many files does this current directory contains::"
read guess_files_count
validate $actual_files_count $guess_files_count
}

validate(){
if [[ $1 -eq $2 ]]
then
echo "Hurry, you guess is correct."
elif [[ $1 -lt $2 ]]
then
echo "You have gussed too high, So try again."
get_user_input
else
echo "You have gussed too less, So try again."
get_user_input
fi
}


#main()
actual_files_count=`find . -type f -print | wc -l`
get_user_input
#validate $actual_files_count $guess_files_count
exit
