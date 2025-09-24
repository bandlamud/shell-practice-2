#!/bin/bash

NUMBER=$1


if [ $NUMBER -lt 10 ]; then
  # Commands to execute if condition is true
  echo "Giving  number  $NUMBER is less then 10"
else
  # Commands to execute if condition is false

  echo "Giving  number  $NUMBER is  greaterthen 10"
fi
