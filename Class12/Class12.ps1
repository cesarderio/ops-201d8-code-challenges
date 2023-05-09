# Script Name:                  Powershell IP Analysis
# Author:                       Raphael Chookagian
# Date of latest revision:      05/9/2023
# Purpose:                      Write a Powershell script that returns the IPv4 address of the computer.

# Declare Functions
# Create
# Main

# Create a Powershell script that performs the following operations:




# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
function NetReport {
  ipconfig /all | Out-File -FilePath .\Desktop\network_report.txt
}



# Use Select-String to search network_report.txt and return only the IP version 4 address.
Select-String -Path .\Desktop\network_report.txt -Pattern 'IPV4'


# Remove the network_report.txt when you are finished searching it.
Remove-Item -Path .\Desktop\network_report.txt -Force
