param ($server, $db)


function KillDBConnections ($srvName, $DBName)
{
	
    import-module SQLPS -DisableNameChecking
	$srv = New-Object -TypeName 'Microsoft.SqlServer.Management.Smo.Server' -ArgumentList $srvName
    $srv.KillAllProcesses($DBName)
    #Write-Host $srvName

}

Push-Location
KillDBConnections -srvName $server -DBName $db
Pop-Location 

