#turn off firewall
netsh advfirewall set allprofiles state off

Write-Host "Firewall status: "

$fws = netsh advfirewall show private state
Write-Host $fws 

$fws = netsh advfirewall show public state
Write-Host $fws

$fws = netsh advfirewall show domain state
Write-Host $fws

# disable firewall notifications
netsh advfirewall set allprofiles settings inboundusernotification disable

Read-Host -Prompt "Press Enter to exit"