<#
.SYNOPSIS
  Assignment #1 (KALI) - PowerShell Basics
.DESCRIPTION
  The goal of this assignment is to get you familiar with PowerShell basic concepts. 
  You will demonstrate your knowledge in Variables, Arrays, and CMDLETs.
  There are a total of 12 problems in this assignment. This version of Assignment 1 is slightly modified to work inside Kali virtual environments.
.NOTES
  Version:        2.0
  Author:         <Your Name>

#>

###################### DO NOT MODIFY #############################
# (Updates Console to location of Script File)  
# Run the full script to automatically update the console to
# the current Assignment folder.
$Path = $PSScriptRoot                                            #
cd $Path                                                         #
##################################################################

#----------------------------------------------------------[Variables]-------------------------------------------------------
### You can store all types of values in PowerShell variables. 
### A variable is a unit of memory in which values are stored. 
### 1. Create a two int variables $i and $x and assign the value to 122 and 633 respectively.
## YOUR CODE HERE


### 2. Now, add $i and $x together and store the value in another variable $y. 
### Then output ("print") the value of $y to the console.
## YOUR CODE HERE


### 3. Divide $y by $i and round the answer to the two closest decimal places and 
### store the value in variable $z. Then print value of $z to the console. 
### HINT: Do some research on how to round values in PowerShell online. 
### Lots of examples are available ;)
## YOUR CODE HERE


### 4. In PowerShell strings and number variables can added together. 
### Create a variable $str and set it to "The value of z is: " and 
### add $str and $z together. Then output $str to the console.
## YOUR CODE HERE


#----------------------------------------------------------[Arrays]-------------------------------------------------------
### Arrays are powerfull datatype that can store a collection of items.
### 1. Create an array variable named $arr and set it to 
### the following collection of integers (10,20,30,40,50,60,70,80,90,100)
## YOUR CODE HERE


### 2. Create a new variable called $itemSum and store the sum of the 2nd and last item in $arr. 
### Print the resule to the console. (10,->20<-,30,40,50,60,70,80,90,->100<-)
## YOUR CODE HERE


#----------------------------------------------------------[CMDLET]-------------------------------------------------------
### This section examines the use of CMDLETs to find information. 
### It begins with a large set of data returned back to us. Later we will continue
### to filter out unneccessary data until the desired set of data is returned.

## 1. Create a variable called $files1 and assign it the output only files
## inside of subfolders in the "Datasets" folder included using the cmdlet "Get-ChildItem"
## HINT: You will need to use two additional parameters to recusively retrieve only files in all sub-directories
## HINT: 37 items will be returned. Use count attribute to verify size 
## (Example: $files1.count)
## YOUR CODE HERE


### 2. Create a variable called $files2 and assign it the output all ".csv" files 
### in "Datasets" using the cmdlet: Get-ChildItem
## HINT:  34 files returned
## YOUR CODE HERE


### 3. Create a variable called $files3 and assign it the output all ".csv" files 
### larger than 50 KB (Length > 50KB) in "Datasets" using the cmdlet: Get-ChildItem
## HINT: 7 files returned. 
## YOUR CODE HERE


### 4.  Create a variable called $files4 and assign it the output all ".csv" files 
### that start with the letter "a" and larger than 50 KB (Length > 50KB) in 
### "Datasets" using the cmdlet: Get-ChildItem
## HINT: 2 files returned
## YOUR CODE HERE


### 5. Now that the two files we were looking for are found and stored in $files4, 
## let's export them out to CSV file named findings.csv
## HINT: 1 CSV file should output to the current directory. 
## YOUR CODE HERE


### 6. Over 1000 CMDLETS are available in PowerShell, research and find 
### a CMDLET to that makes a web request for UNG's main website ung.edu.
### For this exercise, execute the cmdlet you found
### and store it as a value to a variable named $web. 
### Lastly, print the status code property to the console. Did it succeed?
### HINT: Status Code of 200 is Successful
## YOUR CODE HERE 


#----------------------------------------------------------[Complete]-------------------------------------------------------------
