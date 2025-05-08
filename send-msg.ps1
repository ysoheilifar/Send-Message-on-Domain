$ou = "OU=PC,DC=parsa,DC=local"
$computers = Get-ADComputer -filter * -searchbase $ou | select-object -expandproperty Name
$message = Read-Host "Enter the Messsage you want to send"
$startTime = get-date

foreach ($computer in $computers) {
	write-output "checking $computer..."
    if (Test-Connection -ComputerName $computer -Count 1 -Quiet) {
        write-host -ForegroundColor Green "$computer is online. sending message..."
	    try {
		    	msg /server:$computer * $message
	    } catch {
		    Write-output "$computer"
		    }
    } else {
        write-host -ForegroundColor Red "$computer is offline or unreachable."
    }
}

$endTime = get-date
$duration = $endTime - $startTime
write-host -ForegroundColor Cyan "script run time: $($duration.tostring())"
