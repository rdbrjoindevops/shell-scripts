#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date)
PWD=$(pwd)
echo "Script executed at: $TIMESTAMP"
echo "Present working directory: $PWD"
SUM=$(($NUMBER1+$NUMBER2))

echo "SUM of $NUMBER1 and $NUMBER2 is: $SUM"