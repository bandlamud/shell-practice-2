#!/bin/bash

echo "ALL variable passed to the scripts: $@"
echo "ALL variable passed to the scripts: $*"
echo "execution script : $0"
echo "currect working directory is: $PWD"
echo "who is running of the script is: $USER"
echo "Home directory user is: $HOME"
echo "PID of script is : $$"
sleep 50 &
echo "execution PID of last command is : $!"