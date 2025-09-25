#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root previlegies"
    exit 1 # other then zero we can give number
fi


dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing mysql is failure"
    exit 1
else
    echo "installing mysql is success"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing ninx is failure"
    exit 1
else
    echo "installing nginx is success"
fi

dnf install python3 -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing python3 is failure"
    exit 1
else
    echo "installing python3 is success"
fi