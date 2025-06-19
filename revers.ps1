Class MyReverse {
    [string]$Text

    MyReverse([string]$text) {
        $this.Text = $text
    }

    [string] Reverse() {
        $charArray = $this.Text.ToCharArray()
        [array]::Reverse($charArray)
        return -join $charArray
    }
}