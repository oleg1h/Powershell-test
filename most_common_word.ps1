$most_common_word = @{}

# Function to find the most common word in a string
function Find-MostCommonWord {
    param (
        [string]$inputString
    )

    # Split the string into words and group them
    $words = $inputString -split '\W+'
    $groupedWords = $words | Group-Object

    # Find the most common word
    $mostCommon = $groupedWords | Sort-Object Count -Descending | Select-Object -First 1

    # Store the result in the hashtable
    $most_common_word[$inputString] = $mostCommon.Name, $mostCommon.Count

    return $mostCommon.Name , $mostCommon.Count
}
