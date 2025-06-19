class sort{
    [string]$str1
    [string]$str2
    sort([string]$s1, [string]$s2) {
        $this.str1 = $s1
        $this.str2 = $s2
    }

    [string] sortStrings() {
        $combined = ($this.str1 + $this.str2).ToCharArray()
        $uniqueSorted = $combined | Sort-Object -Unique
        return ($uniqueSorted -join '')
    }
}