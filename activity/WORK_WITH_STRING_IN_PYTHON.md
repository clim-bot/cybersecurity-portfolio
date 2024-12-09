# Work with Strings in Python

## Introduction

Security analysts work with a lot of string data. For example, some security analysts work on creating and updating IDs such as employee IDs and device IDs, which are commonly represented as strings. As another example, certain network activity will be stored as string data. Becoming comfortable working with strings in Python is essential for the work of a security analyst.

In this lab, you'll practice creating Python code and working with strings. You'll work with an employee ID, a device ID, and a URL, all represented as string data.

---

## Tips for Completing This Lab

### Scenario

You're working as a security analyst, and you are responsible for writing programs in Python to automate updating employee IDs, extracting characters from a device ID, and extracting components from a URL.

---

## Task 1

Convert a numeric employee ID into a string.

```python
# Assign `employee_id` to a four digit number as an initial value
employee_id = 4186

# Display the data type of `employee_id`
print(type(employee_id))

# Reassign `employee_id` to the same value but in the form of a string
employee_id = str(employee_id)

# Display the data type of `employee_id` now
print(type(employee_id))
```

**Output**:
```
<class 'int'>
<class 'str'>
```

**Question 1**  
What do you observe about the data type of `employee_id`?  

**Answer**  
Initially, `employee_id` is an integer. After reassignment, it becomes a string.

---

## Task 2

Check if an employee ID is less than five digits long.

```python
# Assign `employee_id` to a four digit number as an initial value
employee_id = 4186

# Reassign `employee_id` to the same value but in the form of a string
employee_id = str(employee_id)

# Conditional statement that displays a message if the employee ID length is less than 5 digits
if len(employee_id) < 5:
    print("This employee ID has less than five digits. It does not meet length requirements.")
```

**Output**:
```
This employee ID has less than five digits. It does not meet length requirements.
```

---

## Task 3

Use concatenation to standardize the length of an employee ID.

```python
# Assign `employee_id` to a four digit number as an initial value
employee_id = 4186

# Reassign `employee_id` to the same value but in the form of a string
employee_id = str(employee_id)

# Display the `employee_id` as it currently stands
print(employee_id)

# Conditional statement that updates the `employee_id` if its length is less than 5 digits
if len(employee_id) < 5:
    employee_id = "E" + employee_id

# Display the `employee_id` after the update
print(employee_id)
```

**Output**:
```
4186
E4186
```

---

## Task 4

Extract the fourth character in a device ID.

```python
# Assign `device_id` to a string that contains alphanumeric characters
device_id = "r262c36"

# Extract the fourth character in `device_id` and display it
print(device_id[3])
```

**Output**:
```
2
```

---

## Task 5

Extract the first through the third characters in a device ID.

```python
# Assign `device_id` to a string that contains alphanumeric characters
device_id = "r262c36"

# Extract the first through the third characters in `device_id` and display the result
print(device_id[0:3])
```

**Output**:
```
r26
```

---

## Task 6

Extract the protocol from a URL.

```python
# Assign `url` to a specific URL
url = "https://exampleURL1.com"

# Extract the protocol of `url` along with the syntax following it, display the result
print(url[0:8])
```

**Output**:
```
https://
```

---

## Task 7

Identify the starting index of the domain extension in a URL.

```python
# Assign `url` to a specific URL
url = "https://exampleURL1.com"

# Display the index where the domain extension ".com" is located in `url`
print(url.index(".com"))
```

**Output**:
```
19
```

---

## Task 8

Save the index of the domain extension in a variable.

```python
# Assign `url` to a specific URL
url = "https://exampleURL1.com"

# Assign `ind` to the output of applying `.index()` to `url` in order to extract the starting index of ".com" in `url`
ind = url.index(".com")
```

---

## Task 9

Extract the domain extension from a URL.

```python
# Assign `url` to a specific URL
url = "https://exampleURL1.com"

# Assign `ind` to the output of applying `.index()` to `url` in order to extract the starting index of ".com" in `url`
ind = url.index(".com")

# Extract the domain extension in `url` and display it
print(url[ind:ind+4])
```

**Output**:
```
.com
```

**Question 2**  
What does this code output and why?  

**Answer**  
The code outputs `.com` because it finds the starting index of `.com` in the URL and slices four characters starting from that index.

---

## Task 10

Extract the website name from a URL.

```python
# Assign `url` to a specific URL
url = "https://exampleURL1.com"

# Assign `ind` to the output of applying `.index()` to `url` in order to extract the starting index of ".com" in `url`
ind = url.index(".com")

# Extract the website name in `url` and display it
print(url[8:ind])
```

**Output**:
```
exampleURL1
```

---

## Conclusion

### Key Takeaways:
- Strings are essential for storing and processing security-related data like IDs and URLs.
- Use `str()` to convert numbers into strings for easier manipulation.
- Use `len()` to check the length of strings.
- The `.index()` method helps find the position of a substring within a string.
- String slicing (`[start:end]`) allows you to extract specific parts of a string.
- Concatenation (`+`) can be used to modify strings dynamically.
