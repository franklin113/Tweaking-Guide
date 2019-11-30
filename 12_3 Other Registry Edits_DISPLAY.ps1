
$p = 'HKCU:\Control Panel\Desktop'
Set-ItemProperty -Name Win8DpiScaling -Path $p -Value 1 -Type DWord
Set-ItemProperty -Name LogPixels -Path $p -Value 96 -Type DWord

