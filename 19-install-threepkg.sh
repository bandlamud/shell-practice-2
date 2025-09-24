#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root previlegies"
    exit 1 # other then zero we can give number
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
       echo "ERROR:: installing $2 is failure"
       exit 1
    else
       echo "installing $2 is success"
    fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"


dnf install nginx -y
VALIDATE $? "NGINX"

dnf install python3 -y
VALIDATE $? "PYTHON3"