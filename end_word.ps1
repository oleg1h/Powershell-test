Class end_word
{
    [string] $str

    end_word ([string] $inputStr) {
        $this.str = $inputStr
    }
    [void] LastWord() {
        $words = $this.str -split '\s+'
        if ($words.Count -gt 0) {
            $lastWord = $words[-1]
            Write-Host "Last word: $lastWord"
        }
    }
}