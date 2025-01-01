#!/bin/bash

# Get today's date
today=$(date +%m-%d)

# Define your birthday (month-day format)
my_birthday="01-01" 

# Check if today is your birthday
if [[ "$today" == "$my_birthday" ]]; then
  echo "Happy Birthday to you Mihira!"
else
  echo "Today is not your birthday."
fi