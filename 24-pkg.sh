#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilages"
    exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "ERROR:: installing mysql is failure"
    exit 1
else
    echo "instaling mysql is success"
fi

dnf install nginx -y
if [ $? -ne 0 ]
    echo "ERROR:: installing nginx is failure"
    exit 1
else
    echo "installing nginx is success"
fi

dnf install python3 -y
if [ $? -ne 0 ]; then
    echo "ERROR:: instaling python3 is failure"
    exit 1
else
    echo "ERROR:: installing python3 is success"