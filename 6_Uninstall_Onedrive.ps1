 
 cd $env:APPDATA\..\local\Microsoft\OneDrive\1*
 taskkill /f /im OneDrive.exe 
 .\OneDriveSetup.exe /uninstall 
 cd $PSScriptRoot

 Read-Host -Prompt "Press Enter to exit"