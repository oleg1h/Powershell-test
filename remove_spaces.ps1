Class remove_spaces {
    [string] $inputString

    remove_spaces([string] $myinput) {
        $this.inputString = $myinput
    }

    [void] RemoveExtraSpaces() {
        # Use regex to replace multiple spaces with a single space
        $cleanedString = [regex]::Replace($this.inputString, '\s+', ' ')
        Write-Host "Cleaned String: '$cleanedString'"
    }
}