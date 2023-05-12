
#!/bin/bash

# Script Name:                  Arrays
# Author:                       Raphael Chookagian
# Date of latest revision:      04/27/2023
# Purpose:                      
#Write a script that:
#Creates four directories: dir1, dir2, dir3, dir4
#Put the names of the four directories in an array
#References the array variable to create a new .txt file in each directory Resources

# Declaration of variables

# Declaration of functions

ReadMe(){
touch file.txt
}

Directv(){
  mkdir dir{1..4}
}
Directv

dirArr=( dir1 dir2 dir3 dir4 )

# Create
for dir in "${dirArr[@]}"
do
  cd $dir 
  touch file.txt
  cd ..
done
# echo ${dirsArr[0]}

# Main



# End
