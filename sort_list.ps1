function  Format-Bubble {
    param (
        [Parameter(Mandatory = $true)]
        [array]$InputArray,

        [switch]$ShowSteps
    )
    $array = $InputArray.Clone()
    $n = $array.Length
    for ($i = 0; $i -lt $n - 1; $i++) {
        for ($j = 0; $j -lt $n - $i - 1; $j++) {
            if ($array[$j] -gt $array[$j + 1]) {
                # Swap elements
                $temp = $array[$j]
                $array[$j] = $array[$j + 1]
                $array[$j + 1] = $temp
                if($ShowSteps) {
                    Write-Host "Swapped: $($array[$j]) with $($array[$j + 1])"
                }
            }
        }
    }
    return $array
}