
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
killProcs(){

i=0

while [ "$i" -lt 3 ]
  do
    ps aux
    echo "Choose target to eliminate"
    echo "Enter PID"
    read -r userInput
    kill ["$userInput"] | echo "Would you like to kill again?"
    
    while "$userInput"="yes"
      do
        break
      done
    # kill "$( pgrep "$userInput" | grep -v grep | awk '{print $2}')"
    i="$(( i++ ))"
    # sleep 15
    # while [ "$i" -gt 3 ]
    #   do
    #     echo "time for a break"
    #     break
    #   done
    
  done

}
killProcs
# End
