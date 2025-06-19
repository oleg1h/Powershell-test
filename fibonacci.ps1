Class fibonacci {
    [int]$n

    fibonacci([int]$num) {
        $this.n = $num
    }

    [string] Calculate() {
        $a = 0
        $b = 1
        [int[]]$fibonacci = @()
        while ($a -le $this.n) {
            $fibonacci += $a
            $temp = $a
            $a = $b
            $b = $temp + $b
        }
        return ($fibonacci -join ", ")
    }
}
            