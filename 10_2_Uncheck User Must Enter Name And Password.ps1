# just uncheck the checkbox in the app that opens.
netplwiz

#Windows v2004 ( and later ) First modify registry key to allow the checkbox to be visible:
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device]

Change registry key "DevicePasswordLessBuildVersion" to  0 {as 32Bit DWORD} [ default is 2 ]

"DevicePasswordLessBuildVersion"=dword:00000000
