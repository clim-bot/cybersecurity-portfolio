
# Create Another Algorithm

## Introduction
An important part of cybersecurity is controlling access to restricted content. In this lab, you'll work with a text file containing IP addresses that are allowed to access specific restricted content at your organization.

Parsing a file allows security analysts to read and update the contents. Python helps analysts develop algorithms to automate the process of parsing files and keeping them up-to-date.

You'll develop an algorithm that parses this text file of IP addresses and updates the file by removing addresses that no longer have access to the restricted content.

---

## Tips for Completing This Lab

### Scenario
In this lab, you're working as a security analyst and you're responsible for developing an algorithm that parses a file containing IP addresses that are allowed to access restricted content and removes addresses that no longer have access.

---

### Task 1
Your eventual goal is to develop an algorithm that parses a series of IP addresses that can access restricted information and removes the addresses that are no longer allowed. Python can automate this process.

You're given a text file called `allow_list.txt` that contains a series of IP addresses that are allowed to access restricted information.

There are IP addresses that should no longer have access to this information, and their IP addresses need to be removed from the text file. You're given a variable named `remove_list` that contains the list of IP addresses to be removed.

```python
# Assign `import_file` to the name of the file
import_file = "allow_list.txt"

# Assign `remove_list` to a list of IP addresses that are no longer allowed to access restricted information
remove_list = ["192.168.97.225", "192.168.158.170", "192.168.201.40", "192.168.58.57"]

# Display `import_file`
print(import_file)

# Display `remove_list`
print(remove_list)
```

---

### Task 2
Open the text file using the `import_file` variable, the `with` keyword, and the `open()` function with the `"r"` parameter.

```python
with open(import_file, "r") as file:
    pass  # Code will be completed in the next task
```

---

### Task 3
Use the `.read()` method to read the imported file and store it in a variable named `ip_addresses`.

```python
with open(import_file, "r") as file:
    ip_addresses = file.read()

print(ip_addresses)
```

---

### Task 4
Reassign the `ip_addresses` variable to update its data type from a string to a list using the `.split()` method.

```python
ip_addresses = ip_addresses.split()
print(ip_addresses)
```

---

### Task 5
Write a loop to iterate through `ip_addresses` and display each element.

```python
for element in ip_addresses:
    print(element)
```

---

### Task 6
Use a conditional statement inside the loop to remove elements in `remove_list` from `ip_addresses`.

```python
for element in ip_addresses:
    if element in remove_list:
        ip_addresses.remove(element)

print(ip_addresses)
```

---

### Task 7
Update the original file by converting `ip_addresses` back to a string and writing it to the file.

```python
ip_addresses = " ".join(ip_addresses)

with open(import_file, "w") as file:
    file.write(ip_addresses)
```

---

### Task 8
Verify the updated file content.

```python
with open(import_file, "r") as file:
    text = file.read()

print(text)
```

---

### Task 9
Combine all steps into a function.

```python
def update_file(import_file, remove_list):
    with open(import_file, "r") as file:
        ip_addresses = file.read()
    
    ip_addresses = ip_addresses.split()

    for element in ip_addresses:
        if element in remove_list:
            ip_addresses.remove(element)
    
    ip_addresses = " ".join(ip_addresses)

    with open(import_file, "w") as file:
        file.write(ip_addresses)
```

---

### Task 10
Call the function and verify the result.

```python
update_file("allow_list.txt", ["192.168.25.60", "192.168.140.81", "192.168.203.198"])

with open("allow_list.txt", "r") as file:
    text = file.read()

print(text)
```

---

## Conclusion
Key takeaways from this lab:
- Python has functions and syntax that help you import and parse text files.
- The `with` statement allows you to efficiently handle files.
- The `open()` function allows you to import or open a file. Specify `"r"` for reading and `"w"` for writing.
- The `.read()` and `.write()` methods are used to read and modify files.
- Use loops, conditionals, and string manipulation methods like `.split()` and `.join()` for parsing and updating content.
- Functions help organize and reuse algorithms effectively.
