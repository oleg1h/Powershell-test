function array_print {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [array]$Array
    )

    if ($Array.Count -eq 0) {
        Write-Host "The array is empty."
        return
    }

    Write-Host "Array contents:"
    foreach ($item in $Array) {
        Write-Host "Value from pipe" $item
    }
}