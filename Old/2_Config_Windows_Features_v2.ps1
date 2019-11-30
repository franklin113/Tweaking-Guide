#Run this to get list of all features - Get-WindowsOptionalFeature -Online

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




}



Disable-WindowsOptionalFeature -Online -FeatureName "NetFx3"
Disable-WindowsOptionalFeature -Online -FeatureName "NetFx4-AdvSrvs"

Disable-WindowsOptionalFeature -Online -FeatureName "Printing-Foundation-Features"

Disable-WindowsOptionalFeature -Online -FeatureName "SmbDirect"

Disable-WindowsOptionalFeature -Online -FeatureName "Printing-XPSServices-Features"
Disable-WindowsOptionalFeature -Online -FeatureName "Printing-PrintToPDFServices-Features"

Disable-WindowsOptionalFeature -Online -FeatureName "WorkFolders-Client"

Enable-WindowsOptionalFeature -Online -FeatureName "Client-DeviceLockdown"
Enable-WindowsOptionalFeature -Online -FeatureName "Client-EmbeddedLogon"