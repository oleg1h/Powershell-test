function Export-ProcessInfo {
    param (
        [string]$processName = "chrome",
        [string]$outputDirectory = "."
    )


    $processes = Get-Process | Where-Object { $_.Name -like "*$processName*" }

    # Select relevant properties (Name, Id, StartTime, PagedMemorySize)
    $processInfo = $processes | Select-Object Name, Id, StartTime, PagedMemorySize

    # Export to CSV
    $csvFile = Join-Path -Path $outputDirectory -ChildPath "$processName-processes.csv"
    $processInfo | Export-Csv -Path $csvFile -NoTypeInformation
    Write-Host "CSV exported to: $csvFile"

    # Export to XML
    $xmlFile = Join-Path -Path $outputDirectory -ChildPath "$processName-processes.xml"
    $processInfo | Export-Clixml -Path $xmlFile
    Write-Host "XML exported to: $xmlFile"

    # Export to JSON
    $jsonFile = Join-Path -Path $outputDirectory -ChildPath "$processName-processes.json"
    $processInfo | ConvertTo-Json | Out-File -FilePath $jsonFile
    Write-Host "JSON exported to: $jsonFile"

    # Export to YAML 
    try {
        $yamlFile = Join-Path -Path $outputDirectory -ChildPath "$processName-processes.yaml"
        $processInfo | ConvertTo-Yaml | Out-File -FilePath $yamlFile
        Write-Host "YAML exported to: $yamlFile"
    } catch {
        Write-Host "YAML export failed. Ensure 'powershell-yaml' module is installed."
    }
}
