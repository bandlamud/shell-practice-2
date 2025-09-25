#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root privilages"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: installing $2 is failure"
        exit 1
    else
        echo "instaling $2 is success"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "NGINX"

dnf install python3 -y
VALIDATE $? "PYTHON3"