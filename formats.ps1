get-service | where-object {$_.Name-like 'a*
'} | Select-object -Property Status, DisplayName | ConvertTo-Csv -NoTypeInformation | Out-File -FilePath e:\services.ConvertTo-Csv
