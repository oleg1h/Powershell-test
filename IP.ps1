class IP {
    [string] $address
    [string] $pattern = '\b\d{1,3}(\.\d{1,3}){3}\b'

    IP ([string] $inputAddress) {
        $this.address = $inputAddress
    }

    [void] ShowAddress() {
        $ipMatches = [regex]::Matches($this.address, $this.pattern)
        if ($ipMatches.Count -gt 0) {
            foreach ($match in $ipMatches) {
                Write-Host "IP found: $($match.Value)"
            }
        } else {
            Write-Host "No IP address found in string."
        }
    }
}