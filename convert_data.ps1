Class convert_data
{
    [string] $inputData
    [string] $pattern = '\d{2}-\d{2}-\d{4}'
    convert_data ([string] $data)
    {
        $this.inputData = $data
    }

    [void] ConvertDateFormat()
    {
        if ($this.inputData -match $this.pattern) {
            $date = [datetime]::ParseExact($this.inputData, 'MM-dd-yyyy', $null)
            Write-Host "Converted Date: $($date.ToString('dd-MM-yyyy'))"
        } else {
            Write-Host "Invalid date format."
        }
    }
}