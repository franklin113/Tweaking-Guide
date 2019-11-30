
# WO Display Auto Start
$woPath = "C:\WATCHOUT 6"

$action = New-ScheduledTaskAction -Execute $woPath\WATCHPOINT.exe -WorkingDirectory $woPath

$trigger =  New-ScheduledTaskTrigger -AtLogOn

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "WATCHPOINT" -Description "Run Watchpoint at login" -RunLevel Highest -Force 



Read-Host -Prompt "Press Enter to exit"