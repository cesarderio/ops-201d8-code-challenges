#!/bin/bash

# Script Name:                  Conditionals
# Author:                       Raphael Chookagian
# Date of latest revision:      04/25/2023
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Your script must use at least one array, one loop, and one conditional.

# Declaration of variables
dirArr=( dir1 dir2 dir3 dir4 )

DIR="./CanYouHearMeNow"

# Declaration of functions
ContentCat(){
  cat <<EOF > file.txt
  Is this on?
  How about now?
  Can you hear me now?
EOF
}

ReadMe(){
  for dir in "${dirArr[@]}"
    do
      cd $dir 
      touch file.txt
      ContentCat
      cd ..
    done
}

Directv(){
  mkdir dir{1..4}
}

RemoveDir(){
  rm -rf CanYouHearMeNow
}

# Create/Remove
if [ -d "$DIR"  ]
  then
    RemoveDir
fi

# Main
if [ ! -d "$DIR" ] 
  then
    mkdir -p $DIR && cd $DIR
    Directv
    if [ ! -f "file.txt" ]
      then
        ReadMe
      fi
fi
# End
