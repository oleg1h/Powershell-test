Class find{

    [string] $str
    [string] $pattern = '\b[a-zA-Z]+([_-][a-zA-Z]+)+\b'

    find ([string] $inputStr) {
        $this.str = $inputStr
    }

    [void] CheckMatch() {
        if ($this.str -match $this.pattern) {
            $match = [regex]::Matches($this.str, $this.pattern)
            foreach ($m in $match) {
                Write-Host "Match found: $($m.Value)"
            }
        }
    }
}