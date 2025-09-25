#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root Privilages"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing mysql failure"
    exit 1
else
    echo "installing mysql is success"
fi
