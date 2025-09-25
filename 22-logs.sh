#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME="$( echo $0 | cut -d "." -f )"
LOGS_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)"

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

dnf list installed mysql &>>$LOGS_FILE
#install if its not found
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOGS_FILE
    VALIDATE $? "MYSQL"
else
    echo -e "mysql already installed .. $Y SKIPPING $N"
fi

dnf list installed nginx &>>$LOGS_FILE
#install if its not found
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOGS_FILE
    VALIDATE $? "NGINX"
else
    echo -e "nginx already installed...$Y SKIPPING $N"
fi

dnf list installed python3 &>>$LOGS_FILE
#install it is not found
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOGS_FILE
    VALIDATE $? "PYTHON3"
else
    echo -e "python3 already installed ..$Y SKIPPING $N"
fi
