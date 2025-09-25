#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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

dnf list installed mysql
# install it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql already installed.. $Y SKIPPING $N"
fi

dnf list installed nginx
# install is not found
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "NGINX"
else
    echo -e "nginx already installed.. $Y SKIPPING $N"
fi

dnf installed list python3
# install is not found
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "PYTHON3"
else
    echo -e "python3 already installed.. $Y SKIPPING $n"
fi
