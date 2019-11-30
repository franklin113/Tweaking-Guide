
# set the priority for production machine.
$p = 'HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl'

Set-ItemProperty -Name Win32PrioritySeparation -Path $p -Value 40 -Type DWord
