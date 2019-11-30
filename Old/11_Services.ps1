# Set-Service ServiceName -StartupType (Automatic or Disabled)

$service = Get-Service -DisplayName "Geolocation Service"
Set-Service $service -StartupType Disabled
Write-Host ($service | Format-Table | Out-String)


$service = Get-Service -DisplayName "Bluetooth*" 
Set-Service $service -StartupType Disabled
Write-Host ($service | Format-Table | Out-String)

$service = Get-Service -DisplayName "*Hyper-V*" | Set-Service -StartupType Disabled
Write-Host "Disabled All HyperV Services"

#Infrared Monitor service 
Get-Service -DisplayName "Infrared Monitor service" | Set-Service -StartupType Disabled
Write-Host "Disabled Infrared Monitor service"

Get-Service -DisplayName "Intel(R) Content Protection HDCP Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Intel(R) Content Protection HDCP Service"

Get-Service -DisplayName "Intel(R) Content Protection HECI Service" | Set-Service -StartupType Disabled
Write-Host "Intel(R) Content Protection HECI Service"


Get-Service -DisplayName "Microsoft Account Sign-In Assistant" | Set-Service -StartupType Disabled
Write-Host "Microsoft Account Sign-In Assistant"

Get-Service -DisplayName "NVIDIA Telemetry Container" | Set-Service -StartupType Disabled
Write-Host "NVIDIA Telemetry Container"

Get-Service -DisplayName "Phone Service" | Set-Service -StartupType Disabled
Write-Host "Phone Service"

Get-Service -DisplayName "Print Spooler" | Set-Service -StartupType Disabled
Write-Host "Print Spooler"

Get-Service -DisplayName "Printer Extensions and Notifications" | Set-Service -StartupType Disabled
Write-Host "Printer Extensions and Notifications"

Get-Service -DisplayName "Retail Demo Service" | Set-Service -StartupType Disabled
Write-Host "Retail Demo Service "

Get-Service -DisplayName "Remote*" | Set-Service -StartupType Disabled
Write-Host "Disabled All Remote *** Services"

Get-Service -DisplayName "Telephony" | Set-Service -StartupType Disabled
Write-Host "Disabled Telephony"

Get-Service -DisplayName "Touch Keyboard and Handwriting Panel Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Touch Keyboard and Handwriting Panel Service"

Get-Service -DisplayName "WalletService" | Set-Service -StartupType Disabled
Write-Host "Disabled WalletService"

Get-Service -DisplayName "Windows Backup" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Backup"

Get-Service -DisplayName "Windows Biometric Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Biometric Service"

Get-Service -DisplayName "Windows Defender Antivirus Network Inspection Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Defender Network Inspection Service"

Get-Service -DisplayName "Windows Defender Network Inspection Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Defender Network Inspection Service"

Get-Service -DisplayName "Windows Error Reporting Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Error Reporting Service"

Get-Service -DisplayName "Windows Insider Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Insider Service"

Get-Service -DisplayName "Windows Media Player Network Sharing Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Media Player Network Sharing Service"

Get-Service -DisplayName "Windows Mobile Hotspot Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Mobile Hotspot Service"

Get-Service -DisplayName "Windows Push*" | Set-Service -StartupType Disabled
Write-Host "Disabled All Windows Push Notifications"

Get-Service -DisplayName "Windows Remote Management*" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Remote Management"


Get-Service -DisplayName "Windows Search" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Search"

Get-Service -DisplayName "Windows Store Install Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Store Install Service"

Get-Service -DisplayName "Microsoft Store Install Service" | Set-Service -StartupType Disabled
Write-Host "Disabled Microsoft Store Install Service"

Get-Service -DisplayName "Windows Update" | Set-Service -StartupType Disabled
Write-Host "Disabled Windows Update"

Get-Service -DisplayName "*Xbox*" | Set-Service -StartupType Disabled
Write-Host "Disabled All Xbox Services"

Read-Host -Prompt "Press Enter to exit"