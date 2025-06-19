Class find2{
    [string]$str

    find2([string]$inputString) {
        $this.str = $inputString
    }
    [void] FindWord(){
        if ($this.str -match '\b\w{6,}\b' -and $this.str -match '[A-z]') {
            $foundMatches = [regex]::Matches($this.str, '\b\w{6,}\b')
            foreach ($match in $foundMatches) {
                Write-Host "Found word: $($match.Value)"
            }
        }
    }
}