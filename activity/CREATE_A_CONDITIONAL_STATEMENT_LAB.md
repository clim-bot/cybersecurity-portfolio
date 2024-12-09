# Create a Conditional Statement

## Introduction
Conditional statements are a powerful structure that help in achieving automation when you need to make sure conditions are met before certain actions are executed. For example, security analysts can use conditional statements in Python to check if users are approved to access a device.

In this lab, you will practice writing conditional statements in Python.

---

## Scenario
You're working as a security analyst. First, you are responsible for checking whether a user's operating system requires an update. Then, you need to investigate login attempts to a specific device. You must determine if login attempts were made by users approved to access this device and if the login attempts occurred during organization hours.

---

## Task 1
You are asked to help automate the process of checking whether a user's operating system requires an update. Imagine that a user's device can be running one of the following operating systems: OS 1, OS 2, or OS 3. While OS 2 is up-to-date, OS 1 and OS 3 are not. Your task is to check whether the user's system is up-to-date, and if it is, display a message accordingly.

```python
# Assign a variable named `system` to a specific operating system, represented as a string
system = "OS 2"

# If OS 2 is running, then display a "no update needed" message
if system == "OS 2":
    print("no update needed")
```

---

## Task 2
Assign the `system` variable to different values ("OS 1", "OS 2", and "OS 3") and observe the results.

```python
system = "OS 1"

if system == "OS 2":
    print("no update needed")
```

---

## Task 3
Provide an alternative message when updates are needed.

```python
system = "OS 3"

if system == "OS 2":
    print("no update needed")
else: 
    print("update needed")
```

---

## Task 4
Add `elif` statements to improve the conditional.

```python
system = "OS 4"

if system == "OS 2":
    print("no update needed")
elif system == "OS 1":
    print("update needed")
elif system == "OS 3":
    print("update needed")
```

---

## Task 5
Combine conditions using a logical operator.

```python
system = "OS 4"

if system == "OS 2":
    print("no update needed")
elif system == "OS 1" or system == "OS 3":
    print("update needed")
```

---

## Task 6
Investigate login attempts to a specific device.

```python
approved_user1 = "elarson"
approved_user2 = "bmoreno"
username = "bmoreno"

if username == approved_user1 or username == approved_user2:
    print("This user has access to this device.")
else: 
    print("This user does not have access to this device.")
```

---

## Task 7
Store multiple approved users in a list and use the `in` operator.

```python
approved_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab"]
username = "jhill"

if username in approved_list:
    print("This user has access to this device.")
else: 
    print("This user does not have access to this device.")
```

---

## Task 8
Check if the user logged in during specific organization hours.

```python
organization_hours = True

if organization_hours:
    print("Login attempt made during organization hours.")
else:
    print("Login attempt made outside of organization hours.")
```

---

## Task 9
Combine login approval and organization hours checks.

```python
approved_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab"]
username = "bmoreno"
organization_hours = True

if username in approved_list and organization_hours:
    print("Login attempt made by an approved user during organization hours.")
else:
    print("Username not approved or login attempt made outside of organization hours.")
```

---

## Conclusion
Key takeaways from this lab:
- Conditional statements allow you to execute actions based on specific conditions.
- Comparison operators (e.g., `==`) help compare values.
- Logical operators (`and`, `or`) allow for checking multiple conditions simultaneously.
- These tools are crucial for automating security processes, like detecting required updates or validating user access.

