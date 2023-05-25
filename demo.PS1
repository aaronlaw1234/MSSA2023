$Array = 350, 8, 4

$Car = @{
  Engine = 350
  Cyl = 8
  WheelDrive = 4
}

$Car.Engine

Get-Volume | Select-Object -Property DriveLetter,Size,SizeRemaining,@{n='SizeUsed';e={$_.Size- $_SizeRemaining}
}
Get-Volume | Select-Object -Property DriveLetter,Size,SizeRemaining,@{n='PercentageUsed';e={($_.Size - $_.SizeRemaining) / $_.Size * 100}}