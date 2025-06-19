Class temperature_convert {
    [string]$unit
    [double]$value

    temperature_convert([string]$unit, [double]$value) {
        $this.unit = $unit
        $this.value = $value
    }

    [double]Convert() {
        if ($this.unit -eq "C") {
            return $this.value * 9/5 + 32
        } elseif ($this.unit -eq "F") {
            return ($this.value - 32) * 5/9
        } else {
            throw "Unsupported unit: $($this.unit)"
        }
    }
}