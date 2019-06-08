Write-Host "The Computer information shows below:"              #Print the information
$env:computername                                               #Show computer name
Get-Service | Where-Object{$_.status -eq "Stopped"}             #Show Stopped Services
Get-wmiobject -class win32_networkadapterconfiguration -filter ipenabled=true -computername .       #Show IP address
whoami                                                          #Show current username
Get-Date                                                        #Show current date and time
