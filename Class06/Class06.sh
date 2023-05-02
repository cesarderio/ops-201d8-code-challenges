#!/bin/bash

# Script Name:                  My First Bash Script
# Author:                       Raphael Chookagian
# Date of latest revision:      04/25/2023
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.

# Declaration of variables
dirArr=( dir1 dir2 dir3 dir4 )

DIR="./CanYouHearMeNow"

# Declaration of functions
ReadMe(){
# touch file.txt
for dir in "${dirArr[@]}"
do
  cd $dir 
  touch file.txt
  cat <<EOF > file.txt
  Is this on?
  How about now?
  Can you hear me now?
EOF
  cd ..
done
}

Directv(){
  mkdir dir{1..4}
}

removeDirect(){
  rm -rf CanYouHearMeNow
}

if [ -d "$DIR"  ]
  then
    removeDirect
fi


# Create

# Main

# Create

if [ ! -d "$DIR" ] 
  then
    mkdir -p $DIR && cd $DIR
    Directv
    if [ ! -f "file.txt" ]
      then
        ReadMe
      # touch file.txt
      #     cat <<EOF > file.txt
      #     Is this on?
      #     How about now?
      #     Can you hear me now?
      # EOF
      fi
fi

# End