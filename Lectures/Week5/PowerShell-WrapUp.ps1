# CMDLET Example
Get-Random 
Get-Random -Minimum 0 -Maximum 50

# Store lottery pool
$LotteryNumbers = 1..50

# Function Example
function Get-LotteryNumbers ($count){
    $LotteryPicks = $LotteryNumbers | Get-Random -Count $count | Sort-Object
    return $LotteryPicks
}

Get-LotteryNumbers 5

# Filtering and Search
$MyTicket = @(3,13,22,37,49)
$DrawnNumbers = Get-LotteryNumbers 5

$Matches = $MyTicket | Where-Object {$DrawnNumbers -contains $_}

#Flow Control
if ($Matches.count -gt 0){
    Write-Host "You matched $($Matches.count) number(s): $Matches"
}
else {
    Write-Host "No matches this time!"
}