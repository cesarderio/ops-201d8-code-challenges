
#!/bin/bash

# Script Name:                  My First Bash Script
# Author:                       Raphael Chookagian
# Date of latest revision:      04/25/2023
# Purpose:                      Create a script that uses lshw to display system information to the screen about the following components:.<README>

# Declaration of variables


# Declaration of functions

# Create

# Main
#Name
# sudo lshw -class Name

# CPU
echo "CPU:"
sudo lshw -class cpu | grep -wv capabilities | grep -wv version

echo "RAM:"
sudo lshw -class cpu | grep -i description
sudo lshw -class cpu | grep -i physical id
sudo lshw -class cpu | grep -i size

echo "Display Adapter:"
sudo lshw -class display | grep -i description
sudo lshw -class display | grep -i product
sudo lshw -class display | grep -i vendor
sudo lshw -class display | grep -i physical id
sudo lshw -class display | grep -i bus info
sudo lshw -class display | grep -i width
sudo lshw -class display | grep -i clock
sudo lshw -class display | grep -i capabilities
sudo lshw -class display | grep -i configuration
sudo lshw -class display | grep -i resources


echo "Network Adapter:"
sudo lshw -class network | grep -i description
sudo lshw -class network | grep -i product
sudo lshw -class network | grep -i vendor
sudo lshw -class network | grep -i physical id
sudo lshw -class network | grep -i bus info
sudo lshw -class network | grep -i logical name
sudo lshw -class network | grep -i version
sudo lshw -class network | grep -i serial
sudo lshw -class network | grep -i size
sudo lshw -class network | grep -i capacity
sudo lshw -class network | grep -i width
sudo lshw -class network | grep -i clock
sudo lshw -class network | grep -i capabilities
sudo lshw -class network | grep -i configuration
sudo lshw -class network | grep -i resources

# sudo lshw -class CPU



# End
