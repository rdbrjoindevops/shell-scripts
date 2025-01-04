!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m]"
LOGS_FOLDER="var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$OGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ...$R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}
 echo "script started executing at: $IMESTAMP" &>>$OG_FILE_NAME
if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y &>>$OG_FILE_NAME
    VALIDATE $? "Installing MySQL"
else
    echo -e "MySQL is already ... $Y INSTALLED"
fi


dnf list installed nodejs

if [ $? -ne 0 ]
then
    dnf install nodejs -y &>>$OG_FILE_NAME
    VALIDATE $? "Installing nodejs"
else
    echo -e "nodejs is already ... $Y INSTALLED $N"
fi