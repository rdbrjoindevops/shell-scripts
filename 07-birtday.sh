#!/bin/bash

# Get today's date
today=$(date +%m-%d)

# Define your birthday (month-day format)
my_birthday="01-01" 

# Check if today is your birthday
if [[ "$today" == "$my_birthday" ]]; then
  echo "Happy Birthday to you Mihira! Happy Birthday to the most amazing girl I know! You're smart, kind, and so much fun to be around. May your day be filled with laughter, joy, and all your favorite things. You deserve the world, and I hope you have a birthday that's as special as you are"
else
  echo "Today is not your birthday."
fi