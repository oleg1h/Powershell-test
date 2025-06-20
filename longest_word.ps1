function Find-LongestWords {
    param (
        [string]$inputString
    )

    $words = $inputString -split '\s+'

    $longestWords = $words | Where-Object { $_.Length -ge 10 }


    if ($longestWords.Count -gt 0) {
        $longestWords | Out-File -FilePath "./longest_words.txt" -Append
    }

    return $longestWords
}
