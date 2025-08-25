#### Run to update console to the current directory ##############
# Must run the entire script first to work                       #
$Path = $PSScriptRoot                                            #
cd $Path                                                         #
##################################################################

#For and ForEach Examples

#1. What will happen here?
for($i = 0; $i -lt 100; $i=$i+1){ 
    Write-Host "i equals: $i" 
}


for($i = 0; $i -lt 100; $i++){ 
    Write-Host "i equals: $i" 
}

for($i = 0; $i -lt 100; $i=$i+5){ 
    Write-Host "i equals: $i" 
    if($i -eq 50){
        break
    }
}



#2. Search through  users.txt and return users with google.com email addresses
$users = Get-Content .\users.txt
foreach($user in $users){
    if($user -like "*google.com*"){
        Write-Host $user
    }
}

foreach($user in $users){
    if($user -like "*google.com*"){
        $userSplit = $user.split(",")
        #$userSplit.GetType()
        #$userSplit[3]
        $userSplit[-1]
        Write-Host $user
    }
}



## Foreach example with Branching
# 1. Get all processes
Get-Process

# 2. Filter processes with CPU usage greater than 50 (adjust threshold if needed)
$processes = Get-Process | Where-Object { $_.CPU -gt 50 }

# 3. ForEach loop to demonstrate objects, branching, and accessing properties
foreach ($proc in $processes) {
    Write-Host "Process: $($proc.ProcessName) | CPU: $($proc.CPU)"

    if ($proc.CPU -gt 100) {
        Write-Host "  --> This process is using high CPU!"
    }
    else {
        Write-Host "  --> CPU usage is moderate."
    }
}





## 4. ForLoop to parse out all .js files that run on the main website
$web = Invoke-WebRequest "https://ung.edu" -UseBasicParsing

#Split up raw content by lines
$webArr = $web.RawContent.Split("`r`n")

foreach($line in $webArr)
{ 
    if($line -like "*.js*")
    {Write-Host "$line"}
}
