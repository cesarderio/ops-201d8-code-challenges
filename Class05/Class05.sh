
#!/bin/bash

# Script Name:                  Ops Challenge - Loops
# Author:                       Raphael Chookagian
# Date of latest revision:      04/28/2023
# Purpose:                      
# Write a script that displays running processes, asks the user for a PID, then kills the process with that PID. See README file for more in depth information.

# Declaration of variables

# Declaration of functions


# Create


# Main

i=1

while [ $i -le 3 ]
  do
    ps aux
    echo "Choose target to eliminate"
    echo "Enter PID"
    read -r userInput
    # kill "$userInput"
    kill $( pgrep "$userInput" | grep -v grep | awk "{print $2}")
    # ((i=i+1))
    i=$(( $i + 1 ))
  done
   
echo "Would you like to kill again? Yes/No"
read -r userInput
if [ $userInput="yes" ]
  then
    echo "time for a break"
fi

# End
