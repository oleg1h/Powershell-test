class MyClass{
    [int]$Value

    MyClass() {
        $this.Value = 5
    }

    [int]Power([int]$exponent) {
        return [math]::Pow($this.Value, $exponent)
    }
}