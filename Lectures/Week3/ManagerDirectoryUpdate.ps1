# The Identity Team has asked that we take a CSV file of employees and managers and 
# update the directory users with their Manager attribute 
# Import in the employee/manager csv file


# For each employee update their User object in the Directory 
# and set their Manager Property with the manager provided in the Excel Sheet













#$managerDN = Get-ADUser <Manager username> -Property DistinguishedName | Select DistinguishedName
#Set-ADUser <Employeeusername> -Manager $managerDN