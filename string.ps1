class StringHandler {
    [System.String]$UserString

    # Method to set the string
    [void]SetString([System.String]$inputString) {
        $this.UserString = $inputString
    }

    # Method to print the string in upper case
    [System.String]PrintString() {
            return $this.UserString.ToUpper()
    }
}