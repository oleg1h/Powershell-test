function sort_words {
    param (
        [array]$inputString
    )

    # Split the input string into words
    $words = $inputString -split '\s+'

    # Sort the words alphabetically
    $sortedWords = $words | Sort-Object

    foreach ($word in $sortedWords) {
        $firstLetter = $word.Substring(0, 1).ToUpper()
        if($firstLetter -match '[A-Z]') {
            $word | Out-File -FilePath "./$firstLetter.txt" -Append
        } 
    }
}