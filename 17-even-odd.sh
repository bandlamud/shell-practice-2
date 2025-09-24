#!/bin/bash



# Prompt the user to enter a number
echo  "Please enter the  number: "
read NUMBER

# Check if the number is even or odd
if [ $(($NUMBER % 2)) -eq 0 ]; then
  echo "The Giving $NUMBER  is Even"
else
  echo "The Giving $NUMBER is Odd"
fi