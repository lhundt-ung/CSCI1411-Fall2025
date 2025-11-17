# BASH
# Security Tools --> ping, nmap, metasploit, wireshark


# PYTHON
#Variables
ipAddress = "192.168.2.3"
print(ipAddress)
print(type(ipAddress))
print(len(ipAddress))
print("This is my current IP Address",ipAddress)


#Data Types
L1 = ["192.168.1.100","192.168.1.101","Windows7","Windows10","8.8.8.8"]
D1 = {"OS":"Linux", "Compromised":False,"IP addresses":["10.0.1.2","168.54.65.3"]}
S1 = {"192.168.1.100","192.168.1.100",5,5}
T1 = ("Spring","Summer","Fall","Winter")

print(len(L1))
print(L1[0])
print(S1)



#Flow Control
# Branches
D1 = {"OS":"Linux", "Compromised":False,"IP addresses":["10.0.1.2","168.54.65.3"]}

if len(D1["IP addresses"]) > 5:
    print("System has more than 5 IPs")
elif len(D1["IP addresses"]) == 2:
    print("System has exactly 2 IPs!")
else:
    print("System has 1 IP")





#for loop
T1 = ("Spring","Summer","Fall","Winter")
L1 = ["Spring","Summer","Fall","Winter"]
S1 = {"192.168.1.100","192.168.1.100",5,5}

for thing in S1:
    print(thing)
    #print(len(thing))


#Functions/Arguments
#Write a function that can process the dictionary that looks for a key/value pair
#that match the arguments
D1 = {"OS":"Linux", "Compromised":True,"IP addresses":["10.0.1.2","168.54.65.3"]}

def findItem(dictObj, keyName, value):
    for key in dictObj.keys():
        #print(key)
        if key == keyName and dictObj[key] == value:
            return "System Compromised"
        else:
            print("No matching key found")
            continue


result = findItem(D1,"Compromised",True)
print(result)



#Slicing (Print items in index values 0 - 2)
L1 = ["192.168.1.100","192.168.1.101","Windows7","Windows10","8.8.8.8"]
print(L1[1:3])


#Classes
# Why use a class in Python? What key components make up a class?


#Interacting with APIs
# Why are they used? What data type is returned when interacting with an API?