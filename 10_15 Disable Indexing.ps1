
function Disable-Indexing {

    Param($Drive)

    $obj = Get-WmiObject -Class Win32_Volume -Filter "DriveLetter='$Drive'"

    $indexing = $obj.IndexingEnabled

    if("$indexing" -eq $True){

        write-host "Disabling indexing of drive $Drive"

        $obj | Set-WmiInstance -Arguments @{IndexingEnabled=$False} | Out-Null

    }
    else{
        write-host "Indexing is already turned off"
    }

}



#Use:

#Disable Drive Indexing on C:\

Disable-Indexing "C:"
Read-Host -Prompt "Press Enter to exit"