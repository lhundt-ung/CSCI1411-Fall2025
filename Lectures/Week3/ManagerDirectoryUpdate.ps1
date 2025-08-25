# The Identity Team has asked that we take a CSV file of employees and managers and 
# update the directory users with their Manager attribute 
# Import in the employee/manager csv file
$employees = Import-Csv ./fake_employees.csv

# For each employee update their User object in the Directory 
# and set their Manager Property with the manager provided in the Excel Sheet
foreach($employee in $employees){
    Write-Host $employee.Username,$employee.ManagerUsername

    $managerDN = Get-ADUser $employee.ManagerUsername -Property DistinguishedName | Select DistinguishedName
    Set-ADUser $employee.Username -Manager $managerDN
}












#$managerDN = Get-ADUser <Manager username> -Property DistinguishedName | Select DistinguishedName
#Set-ADUser <Employeeusername> -Manager $managerDN