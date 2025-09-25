#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the script with root Privilages"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: installing $2 failure"
        exit 1
    else
        echo "installing $2 is success"
    fi

}

dnf list installed mysql
#install if its not found
if [ $1 -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo "mysql already installed .. $Y SKIPPING $N"
fi

dnf list installed nginx
#install if its not found
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "NGINX"
else
    echo "nginx already installed...$Y SKIPPING $N"
fi

dnf list installed python3
#install it is not found
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "PYTHON3"
else
    echo "python3 already installed ..$Y SKIPPING $N"
fi
