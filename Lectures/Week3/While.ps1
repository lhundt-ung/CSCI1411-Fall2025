#While Loops

# What does Start-Sleep CMDLET do?
$x = $null

while ($x -ne "4") {
 $x = Read-Host -Prompt '2 + 2 =?'
 Start-Sleep 5
}


# What does $x-- do? 
# Describe what will happen when the loop is ran below
$x = 0
do { 
    Write-Host "X equals $x";$x-- } 
while ( $x -le 100 )






Another forloop
$x = 1,2,78,3
for($a = 0;$a -le $x.Count; $a++){
    Write-Host $x[$a]
}

'''
#Do While/Do Until
# Generate a random number between 1 and 10
$number = Get-Random -Minimum 1 -Maximum 11

do {
    $guess = Read-Host "Guess a number between 1 and 10"
    
    if ($guess -lt $number) {
        Write-Host "Too low, try again!"
    }
    elseif ($guess -gt $number) {
        Write-Host "Too high, try again!"
    }
    else {
        Write-Host "Correct! The number was $number"
    }
}
while ($guess -ne $number)
'''