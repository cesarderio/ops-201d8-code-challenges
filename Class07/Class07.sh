
#!/bin/bash

# Script Name:                  My First Bash Script
# Author:                       Raphael Chookagian
# Date of latest revision:      04/25/2023
# Purpose:                      Create a script that uses lshw to display system information to the screen about the following components:.<README>

# Declaration of variables


# Declaration of functions
Name() {
echo "Name:"
# sudo lshw -class Name ## <--------------------???????
}

CPU() {
echo "CPU:"
sudo lshw -class cpu | grep -wv capabilities | grep -wv version | grep -wv *-cpu
}

RAM() {
echo "RAM:"
sudo lshw -class memory
}

Display() {
echo "Display Adapter:"
sudo lshw -class display | grep -wv display | grep -wv version | grep -wv logical
}

Network() {
echo "Network Adapter:"
sudo lshw -class network | grep -wv network
}
# Create

# Main
Name
CPU
RAM
Display
Network

# End
