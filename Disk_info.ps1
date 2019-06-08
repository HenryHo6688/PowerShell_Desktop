$diskinfo=Get-WMIObject -class Win32_Logicaldisk -name root\CIMV2
foreach ($b in $diskinfo)
{
write-host "DeviceID:",$b.DeviceID
write-host "Disk Size:",$b.Size
}