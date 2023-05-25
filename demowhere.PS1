# process that have a cpu greater than 2

Get-process | Where-Object {$_.cpu -gt 2} 

# List the services that do not have more than 1 dependentservices

Get-Service | Where-Object {$_.DependentServices.Count -le 1} | Select-Object -Property Name, DependentServices
