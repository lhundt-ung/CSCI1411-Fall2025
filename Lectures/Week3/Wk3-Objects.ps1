#CMDLETs and objects
Get-Process

#0 Get a single process by name
$p = Get-Process -ProcessName "wireshark"
$p
$p | format-list *
$p | fl *
$p.GetType()
$p.GetType().Name
$p | Get-Member

#1. What type of Object is $processes
$processes = Get-Process
$processes.GetType()

#2. What type of Object is our 11th element in our Array
$processes = Get-Process
$processes[10]
$processes[10].GetType()
$processes[10].CPU



#3. Ways to count the number of items in the array
$processes | Measure-Object
$processes | Measure
$processes.count


# Use of fl (Format-List) to display all properties and current values
$processes2 = $processes | Where-Object {$_.ID -lt 4000}
$processes2.count

#Get-ChildItem
$files = Get-ChildItem

#Select-Object has a great way to pull in specific Object Properties

