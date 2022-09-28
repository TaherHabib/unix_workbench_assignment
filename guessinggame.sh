#!/usr/bin/env bash
# File: guessinggame.sh

function check_response {
  if [[ $1 -eq num_files ]]
  then
    echo 0
  elif [[ $1 -lt num_files ]]
  then
    echo -1
  else
    echo 1
  fi
}

num_files=$(expr $(ls -l | wc -l) - 1)

echo "Guess how many files are in the current directory? "
read response

res=$(check_response response)

while [[ ! res -eq 0 ]]
do
  if [[ res -lt 0 ]]
  then
    echo "Guessed number is lower than actual! Try again: "
    read response
    res=$(check_response response)
  else
    echo "Guessed number is higher than actual! Try again: "
    read response
    res=$(check_response response)
  fi
done

echo "Congratulations! Correct guess"
