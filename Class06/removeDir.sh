#!/bin/bash

# Script Name:                  My First Bash Script
# Author:                       Raphael Chookagian
# Date of latest revision:      04/25/2023
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.

# Declaration of variables
DIR="./CanYouHearMeNow"

# Declaration of functions
removeDirect(){
  rm -rf CanYouHearMeNow
}

if [ -d "$DIR"  ]
  then
    removeDirect
fi