
$numbertoguess = 1..100| get-random
do {
  [int]$UserGuess = Read-Host -Prompt "Please enter a number between 1 and 100"
  if ($UserGuess -lt $NumberToGuess) {Write-Host "Pick a higher number"}
  elseif ($UserGuess -gt $NumberToGuess) {Write-Host "Pick a lower number"}
  else {Write-Host "Congrats! you picked the correct number"}
} until ($NumberToGuess -eq $UserGuess)