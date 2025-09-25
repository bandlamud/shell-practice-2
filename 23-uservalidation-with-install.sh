#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilages"
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "ERROR:: installing mysql is failure"
else
    echo "instaling mysql is success"
fi
