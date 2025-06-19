Class mpTable {
    [int]$num

    mpTable([int]$num) {
        $this.num = $num
    }

    [void] printTable() {
        for ($i = 1; $i -le 10; $i++) {
            $result = $this.num * $i
            Write-Host "$($this.num) x $i = $result"
        }
    }
}