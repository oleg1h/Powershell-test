function Get-ColoredText {
    param(
        [Parameter(Mandatory=$true)]
        [string]$text,

        [switch]$Red,
        [switch]$Green,
        [switch]$Blue,
        [switch]$Yellow,
        [switch]$Cyan,
        [switch]$Magenta,
        [switch]$White,
        [switch]$Black
    )

    # Determine the color based on the switch
    $color = $null

    if ($Red) { $color = 'Red' }
    elseif ($Green) { $color = 'Green' }
    elseif ($Blue) { $color = 'Blue' }
    elseif ($Yellow) { $color = 'Yellow' }
    elseif ($Cyan) { $color = 'Cyan' }
    elseif ($Magenta) { $color = 'Magenta' }
    elseif ($White) { $color = 'White' }
    elseif ($Black) { $color = 'Black' }

    # Check if a valid color is selected
    if ($color) {
        Write-Host $text -ForegroundColor $color
    } else {
        Write-Host "No color switch selected. Text is displayed without color."
    }
}
