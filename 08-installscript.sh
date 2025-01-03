#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then

echo " Error:: you must have sudo access to execute this script"
exit 1

fi

dnf list installed mysql

if [ $? -ne 0 ]
then 

dnf install mysql -y
if [ $? -ne 0 ]
then
cho "Installing MySQL ... FAILURE"
exit 1

else 
echo "Installing MySQL ... SUCCESS"

fi
else 
echo "MySQL is already ... INSTALLED"

fi


