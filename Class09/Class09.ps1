@REM # Script Name:                  My First Bat Script
@REM # Author:                       Raphael Chookagian
@REM # Date of latest revision:      04/25/2023
@REM # Purpose:                      Write a set of Powershell commands that fetch useful System event logs. Include language appropriate syntax and file extensions.



# Declare Functions
# Create

# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Last24(){
  Get-EventLog -List | %{Get-EventLog -LogName $_.Log -After (Get-Date).Date.AddDays(-1) -ErrorAction Ignore} | Sort-Object TimeGenerated | Format-Table -AutoSize -Wrap | Out-File -FilePath .\Desktop\last_24.txt
}

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

AirOr(){
  Get-EventLog -LogName System -EntryType Error | Out-File -FilePath .\Desktop\errors.txt
}

# Print to the screen all events with ID of 16 from the System event log.

Print16() { 
  Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16} | 
}

# Print to the screen the most recent 20 entries from the System event log.’

Print20(){
  Get-EventLog -LogName System -Newest 20
}

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).

Print500(){
  Get-EventLog -LogName System -Newest 500 | Format-Table -AutoSize -Wrap
}


# Main

Last24
AirOr
echo Print16
echo Print20
echo Print500


