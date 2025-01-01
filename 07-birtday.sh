#!/bin/bash

# Get the current date
today=$(date +%Y-%m-%d)

# Define the birthday 
birthday="01-01" # Replace with the actual birth month-day

# Check if today is the birthday
if [[ "$today" == *"-"$birthday"* ]]; then
  echo "Happy Birthday!"
  # Optional: Add more celebratory messages or actions here
  # For example:
  - Play a birthday song
   - Display a birthday message with decorations
  # - Send a notification
else
  # echo "Today is not your birthday."
fi