Class DUDelete {
    [string]$inputString

    DUDelete([string]$inputValue) {
        $this.inputString = $inputValue
    }

    [string] RemoveDU() {
        return $this.inputString -replace '_', '' -replace '-', ''
    }
}