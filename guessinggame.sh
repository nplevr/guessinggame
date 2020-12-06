#!/usr/bin/bash

function ret_files_num {
 local files_num=`ls -lp | grep -v / | wc -l` #list files with a \ for directories pipe invert lines with \ pipe count lines
 files_num=$[files_num - 2] #remove 2 lines, the first line the ls summary and the line count for itself 
 echo $files_num
}

files_num=$(ret_files_num)
test_patern_str='^[0-9]+$'
test_guess=-1

while [ $test_guess -ne $files_num ]
do
 echo "Please guess the number of files there are inside $PWD directory"
 read user_input

 if ! [[ $user_input =~ $test_patern_str ]] ; then
   echo "Input is not a positive number"
   continue
 fi

 test_guess=$user_input

 if [ $test_guess -eq $files_num ]; then
 echo "Congratulations you guessed right!"
 exit
 elif [ $test_guess -gt $files_num ]; then
 echo "You guessed too high :("
 elif [ $test_guess -lt $files_num ]; then
 echo "You guessed too low :("
 fi
done
