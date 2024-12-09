# Algorithm for File Updates in Python

## Project Description
In this project, you work as a security professional at a healthcare company. Your role involves regularly updating a file containing IP addresses of employees allowed to access restricted content. Access is granted based on IP addresses in an allow list, and employees no longer needing access are identified in a remove list. Using Python, you developed an algorithm to compare the allow list with the remove list and update the file to reflect these changes.

---

## Open the File That Contains the Allow List
To open the file containing the allow list (`allow_list.txt`), the Python `with` statement and `open()` function are used. This ensures efficient file handling and automatically closes the file after operations.

```python
# Assign the file name to a variable
import_file = "allow_list.txt"

# Open the file
with open(import_file, "r") as file:
    pass  # Code continues in the next steps
```

---

## Read the File Contents
To read the contents of the file, the `.read()` method is applied to the opened file. This method converts the file contents into a string format.

```python
with open(import_file, "r") as file:
    ip_addresses = file.read()

print(ip_addresses)
```

The output is a string of all IP addresses in the allow list.

---

## Convert the String Into a List
To make the IP addresses easier to manipulate, the `.split()` method is applied to the string, converting it into a list where each IP address is an individual element.

```python
ip_addresses = ip_addresses.split()
print(ip_addresses)
```

---

## Iterate Through the Remove List
The remove list contains IP addresses to be removed. A `for` loop is used to iterate through each element of the remove list.

```python
remove_list = ["192.168.97.225", "192.168.158.170", "192.168.201.40", "192.168.58.57"]

for element in remove_list:
    print(element)
```

This iteration allows the algorithm to evaluate each element in the remove list.

---

## Remove IP Addresses That Are on the Remove List
Within the loop, a conditional statement checks if the current element exists in the allow list. If it does, the `.remove()` method is used to delete it from the list.

```python
for element in remove_list:
    if element in ip_addresses:
        ip_addresses.remove(element)

print(ip_addresses)
```

The `.remove()` method is suitable because the allow list does not contain duplicate IP addresses.

---

## Update the File With the Revised List of IP Addresses
After removing the IP addresses, the updated list is converted back to a string using `.join()`. Each IP address is placed on a new line using `"
".join()`.

```python
ip_addresses = "
".join(ip_addresses)

with open(import_file, "w") as file:
    file.write(ip_addresses)
```

The `with` statement ensures the file is efficiently rewritten with the updated list of IP addresses.

---

## Summary
This algorithm automates the process of updating the allow list by:
1. Opening the file and reading its contents.
2. Converting the contents from a string to a list for easy manipulation.
3. Iterating through the remove list to identify and remove matching IP addresses from the allow list.
4. Writing the updated allow list back to the file.

Using Python's `with` statement, `open()` function, and list methods like `.split()`, `.remove()`, and `.join()`, the algorithm efficiently handles file operations and ensures the allow list remains accurate and up-to-date.

