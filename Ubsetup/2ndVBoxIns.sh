#!/bin/bash

# Script Name:                  GitHub
# Author:                       Raphael Chookagian
# Date of latest revision:      05/10/2023
# Purpose:                      



# Declare Variables

# Declare Functions

# Create

# Main

# End

sudo apt update

sudo apt install virtualbox -y

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
