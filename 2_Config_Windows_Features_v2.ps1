#Run this to get list of all features - Get-WindowsOptionalFeature -Online
clear
$Features = @(
            "NetFx3",
            "NetFx4-AdvSrvs",
            "Printing-Foundation-Features",
            "SmbDirect",
            "Printing-XPSServices-Features",
            "Printing-PrintToPDFServices-Features",
            "WorkFolders-Client",
            "Client-DeviceLockdown",
            "Client-EmbeddedLogon"
            )


foreach ($i in $Features)
{

    Disable-WindowsOptionalFeature -Online -FeatureName $i
    $curFeature = Get-WindowsOptionalFeature -Online -FeatureName $i

    Write-Host ($curFeature | Format-List | Out-String)

}
