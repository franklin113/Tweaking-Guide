

$services = @(
    "Geolocation Service",
    "Bluetooth*",
    "*Hyper-V*",
    "Infrared Monitor service",
    "Intel(R) Content Protection HDCP Service",
    "Intel(R) Content Protection HECI Service",
    "Microsoft Account Sign-In Assistant",
    "NVIDIA Telemetry Container",
    "Phone Service",
    "Print Spooler",
    "Printer Extensions and Notifications",
    "Retail Demo Service",
    "Remote*",
    "Telephony",
    "Touch Keyboard and Handwriting Panel Service",
    "WalletService",
    "Windows Backup",
    "Windows Biometric Service",
    "Windows Defender Antivirus Network Inspection Service",
    "Windows Defender Network Inspection Service",
    "Windows Error Reporting Service",
    "Windows Insider Service",
    "Windows Media Player Network Sharing Service",
    "Windows Mobile Hotspot Service",
    "Windows Push*",
    "Windows Remote Management*",
    "Windows Search",
    "Windows Store Install Service",
    "Microsoft Store Install Service",
    "Windows Update",
    "*Xbox*"
    )
  
$curService      

clear
$ErrorActionPreference='Stop'

$ErrorArray = @()

foreach ($s in $services) {
    
    
    Try 
    {
        Get-Service -DisplayName $s | Set-Service -StartupType Disabled
        $curService =  Get-Service -DisplayName $s
        
        Write-Host ($curService | Format-Table | Out-String)
    }
    Catch [System.Management.Automation.ActionPreferenceStopException]
    {
        Write-Host ("Error disabling ", $s) -ForegroundColor Red -BackgroundColor Black
        $ErrorArray += $s
    }
}

Write-Host "There were problems disabling the below services: "

foreach ($i in $ErrorArray){
    Write-Host $i -ForegroundColor Red -BackgroundColor Black
}

Read-Host -Prompt "Press Enter to exit"