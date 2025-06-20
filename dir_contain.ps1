Get-ChildItem "D:\" -Recurse | 
    Where-Object { -not $_.PSIsContainer } |  # Only files (not directories)
    Select-Object -Property Name, 
                   @{Name='Size (MB)'; Expression={[math]::round($_.Length / 1024 / 1024, 2)}} | 
    Format-Table -AutoSize
