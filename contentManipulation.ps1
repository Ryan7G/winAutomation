#Simple script that will modify a files contents with a specified string 
 $filePath = 'some\path\here'
    $tempFilePath = "$env:TEMP\$($filePath | Split-Path -Leaf)"
    $find = 'string to replace'
    $replace = 'replace with this'

    (Get-Content -Path $filePath) -replace $find, $replace | Add-Content -Path $tempFilePath
    Remove-Item -Path $filePath
    Move-Item -Path $tempFilePath -Destination $filePath