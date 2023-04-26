
#!/bin/bash

# Script Name:                  My First Bash Script
# Author:                       Raphael Chookagian
# Date of latest revision:      04/26/2023
# Purpose:                      
# Write a function that prints the login history of users on this computer, followed by the text “This is the login history”.
# In your script, call that function three times.
# Use the same template introduced in Challenge02.

# Declaration of variables

greeting="Hello world!"

Iwork="I am working perfectly!"

log () {
  sudo last -a
  echo "This is the login history"
}
log_cesar () {
  sudo last -a | grep cesar
  echo "This is the login history"
}

# Declaration of functions

# login_history () {
#   # print login history of users on this computer
#   sudo last -a

#   # add text at end
#   echo "This is the login history"
# }
login_history () {
  log
  

  log
  
  
  log
}






# Create

# Main

# echo $greeting

# echo $Iwork


# login_history
# login_history
# login_history
login_history

log_cesar

# End