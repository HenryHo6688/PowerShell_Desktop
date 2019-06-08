Get-CimInstance -ClassName Win32_BIOS -ComputerName .               #Getting BIOS information
Get-CimInstance -ClassName Win32_Processor -ComputerName . | Select-Object -ExcludeProperty "CIM*"      #Getting the CPU information
Get-CimInstance -ClassName Win32_QuickFixEngineering -ComputerName .        #Getting the patching info.
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName . | Select-Object -Property BuildNumber,BuildType,OSType,ServicePackMajorVersion,ServicePackMinorVersion
Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName . | Select-Object -Property NumberOfLicensedUsers,NumberOfUsers,RegisteredUser