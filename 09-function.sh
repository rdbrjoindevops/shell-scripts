#!/bin/bash

USERID=$(id -u)

VALIDETE(){
    if [ $1 -ne 0 ]
    then 
  echo "$2 ...failure"
  exit 1
  else 
  echo "$2 ...success"
  fi

 }

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 

dnf install mysql -y
VALIDTE $? "INSTALL MYSQL"

else 
echo " MySQL already installed"


fi

dnf list installed nginx

if [ $? -ne 0 ]
then 

dnf install nginx -y
VALIDTE $? "INSTALL nginx"

else 
echo " nginx already installed"


fi


