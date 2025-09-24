#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then
    echo "ERROR:: Please run this script with root previlegies"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: installing mysql is failure"
else
    echo "installing mysql is success"
fi