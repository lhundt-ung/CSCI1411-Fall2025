# Select-String search in files (2 ways)
# Simple Match without using Get-Content
Select-String -Path access.log -SimpleMatch "honeypot"

# Select-String used with Get-Content to read a file
Get-Content .\access.log | Select-String -SimpleMatch "honeypot" 
$hits = Get-Content .\access.log | Select-String -SimpleMatch "honeypot"
$hits | measure



# Simple keyword search, note the -Pattern Argument. 
# What does Case Sensitive parameter do?
Get-Content -Path *.* | Select-String -Pattern "function" -CaseSensitive 

Select-String -Path .\*.* -Pattern "Function" 






