$components = @(
               "*Microsoft.WindowsAlarms*",
               "*Microsoft.WindowsCamera*",
               "*Microsoft.WindowsStore*",
               "*Microsoft.People*",
               "*Microsoft.Messaging*",
               "*Microsoft.MicrosoftStickyNotes*",
               "*Microsoft.WindowsSoundRecorder*",
               "*microsoft.widnowscommunicationsapps*",
               "*Zune*",
               "*WindowsMaps*",
               "*Wallet*",
               "*Office.OneNote*",
               "*Office.OneNote*",
               "*3dViewer*",
               "*Print3D*",
               "*GetHelp*",
               "*Getstarted*",
               "*OfficeHub*",
               "*SkypeApp*",
               "*WindowsFeedbackHub*",
               "*DesktopAppInstaller*",
               "*OneConnect*",
               "*OneConnect*",
               "*People*",
               "*StorePurchaseApp*",
               "*SolitaireCollection*",
               "*Services.Store.Engagement*",
               "*BingWeather*",
               "*Advertising.Xaml*",
               "*Xbox*",
               "*StorePurchaseApp*",
               "*store*"
)
clear
$ErrorActionPreference='Stop'
$ErrorArray = @()

foreach ($i in $components)
{
    Try 
    {
        get-AppxPackage $i | remove-AppxPackage

        $curComp = get-AppxPackage $i

        Write-Host ($curComp | Format-Table | Out-String)
    }
    Catch [System.Management.Automation.ActionPreferenceStopException]
    {
        Write-Host ("Error Removing Component ", $i) -ForegroundColor Red -BackgroundColor Black
        $ErrorArray += $i
    }
    
    
}

foreach ($i in $ErrorArray){
    Write-Host ($i | Format-List | Out-String)
}

