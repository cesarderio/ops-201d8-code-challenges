
#!/bin/bash

# Script Name:                  My First Bash Script
# Author:                       Raphael Chookagian
# Date of latest revision:      04/26/2023
# Purpose:                      add purpose here/decription

# Declaration of variables

greeting="Hello world!"

Iwork="I am working perfectly!"

# Declaration of functions

login_history () {
  # print login history of users on this computer
  sudo last -a

  # add text at end
  echo "This is the login history"
}






# Create

# Main

echo $greeting

echo $Iwork


login_history
login_history
login_history

# End