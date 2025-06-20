$serviceProcessManager = @{}
Get-Service | Where-Object {$_.Status -eq 'Running'} | ForEach-Object {
    $serviceProcessManager[$_.Name] = $_.Id
    Write-Host "Windows Service: $($_.Name)"
}