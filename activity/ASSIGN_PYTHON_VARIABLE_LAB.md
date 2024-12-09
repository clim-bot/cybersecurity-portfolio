# Assign Python Variables

## Introduction

Variables help security analysts to keep track of a variety of security-related information. For example, analysts may need to create Python variables for the users who are allowed to log in, the number of login attempts that they're permitted, and the current number of attempts that a user has made.

In this lab, you'll practice assigning values to variables and determining their data types.

---

## Tips for Completing This Lab

### Scenario

You are a security analyst who is responsible for writing code that will automate analysis of login attempts made to a specific device. As the first step, you'll need to create variables to keep track of information relevant to the login process. This information includes the device ID, list of approved usernames, maximum login attempts allowed per user, current login attempts made by a user, and login status.

Throughout this lab, you'll assign these variables and check the data types of the variables.

---

## Task 1

Assign the device ID `72e08x0` to a variable `device_id` and display it:

```python
# Assign the `device_id` variable to the device ID that only specified users can access
device_id = "72e08x0"

# Display `device_id`
print(device_id)
```

**Expected Output**:
```
72e08x0
```

---

## Task 2

Find the data type of the `device_id` variable and display it:

```python
# Assign the `device_id` variable to the device ID that only specified users can access
device_id = "72e08x0"

# Assign `device_id_type` to the data type of `device_id`
device_id_type = type(device_id)

# Display `device_id_type`
print(device_id_type)
```

**Expected Output**:
```
<class 'str'>
```

**Question 1**: Based on the output, what is the data type of `device_id`?  
**Answer**: The data type of `device_id` is `str`, which means it stores a string value.

---

## Task 3

Create a list of approved usernames and display it:

```python
# Assign `username_list` to the list of usernames who are allowed to access the device
username_list = ["madebowa", "jnguyen", "tbecker", "nhersh", "redwards"]

# Display `username_list`
print(username_list)
```

**Expected Output**:
```
['madebowa', 'jnguyen', 'tbecker', 'nhersh', 'redwards']
```

---

## Task 4

Find the data type of the `username_list` variable and display it:

```python
# Assign `username_list_type` to the data type of `username_list`
username_list_type = type(username_list)

# Display `username_list_type`
print(username_list_type)
```

**Expected Output**:
```
<class 'list'>
```

**Question 2**: Based on the output, what is the data type of `username_list`?  
**Answer**: The data type of `username_list` is `list`, which means it stores a collection of items.

---

## Task 5

Update the list of approved usernames and display both the original and updated lists:

```python
# Original list of usernames
username_list = ["madebowa", "jnguyen", "tbecker", "nhersh", "redwards"]
print(username_list)

# Updated list of usernames
username_list = ["madebowa", "jnguyen", "tbecker", "nhersh", "redwards", "lpope"]
print(username_list)
```

**Expected Output**:
```
['madebowa', 'jnguyen', 'tbecker', 'nhersh', 'redwards']
['madebowa', 'jnguyen', 'tbecker', 'nhersh', 'redwards', 'lpope']
```

**Question 3**: What do you observe about the contents of `username_list`?  
**Answer**: The updated list includes an additional username `"lpope"`, showing that the list was successfully reassigned.

---

## Task 6

Define the maximum number of login attempts and check its data type:

```python
# Assign `max_logins` to the value 3
max_logins = 3

# Assign `max_logins_type` to the data type of `max_logins`
max_logins_type = type(max_logins)

# Display `max_logins_type`
print(max_logins_type)
```

**Expected Output**:
```
<class 'int'>
```

**Question 4**: What is the data type of `max_logins`?  
**Answer**: The data type of `max_logins` is `int`, meaning it stores an integer value.

---

## Task 7

Define the current number of login attempts and check its data type:

```python
# Assign `login_attempts` to the value 2
login_attempts = 2

# Assign `login_attempts_type` to the data type of `login_attempts`
login_attempts_type = type(login_attempts)

# Display `login_attempts_type`
print(login_attempts_type)
```

**Expected Output**:
```
<class 'int'>
```

**Question 5**: What is the data type of `login_attempts`?  
**Answer**: The data type of `login_attempts` is `int`.

---

## Task 8

Compare the number of login attempts to the maximum and display the Boolean result:

```python
# Compare login attempts to maximum allowed
print(login_attempts <= max_logins)
```

**Expected Output**:
```
True
```

**Question 6**: What does the output `True` mean?  
**Answer**: It means the current number of login attempts is within the allowed limit.

---

## Task 9

Assign new values to `login_attempts` and observe how the Boolean result changes:

```python
# Assign `login_attempts` to a specific value
login_attempts = 4

# Compare login attempts to maximum allowed
print(login_attempts <= max_logins)
```

**Expected Output**:
```
False
```

**Question 7**: What do you observe about the output?  
**Answer**: When `login_attempts` is greater than `max_logins`, the output is `False`, meaning the user has exceeded the allowed limit.

---

## Task 10

Assign a Boolean value to a variable and check its data type:

```python
# Assign `login_status` to the Boolean value False
login_status = False

# Assign `login_status_type` to the data type of `login_status`
login_status_type = type(login_status)

# Display `login_status_type`
print(login_status_type)
```

**Expected Output**:
```
<class 'bool'>
```

**Question 8**: What is the data type of `login_status`?  
**Answer**: The data type of `login_status` is `bool`, meaning it stores a Boolean value.

---

## Conclusion

Key takeaways:
- Variables store different types of data, like strings, lists, integers, and Booleans.
- The `type()` function helps identify the data type of a variable.
- The `<=` operator compares values and outputs a Boolean result (`True` or `False`).
- The `print()` function is essential for displaying outputs and debugging.
