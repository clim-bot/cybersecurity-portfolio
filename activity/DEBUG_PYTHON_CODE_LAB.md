
# Debug Python Code

## Introduction
One of the biggest challenges faced by analysts is ensuring that automated processes run smoothly. Debugging is an important practice that security analysts incorporate in their work to identify errors in code and resolve them so that the code achieves the desired outcome.

Through a series of tasks in this lab, you'll develop and apply your debugging skills in Python.

---

## Tips for Completing This Lab

### Scenario
In your work as a security analyst, you need to apply debugging strategies to ensure your code works properly. Throughout this lab, you'll work with code that has some errors. You'll need to read code cells, run them, identify the errors, and adjust the code to resolve them.

---

### Task 1
The following code cell contains a syntax error. Run the code, identify why the error occurs, and modify it to resolve the issue.

```python
# For loop that iterates over a range of numbers and displays a message each iteration
for i in range(10):
    print("Connection cannot be established")
```

#### Question 1
**What happens when you run the code before modifying it? How can you fix this?**  
When the code is run before modifying it, the output shows `SyntaxError: invalid syntax`. This is caused by a missing colon (`:`) at the end of the `for` loop header. Adding the colon fixes the issue.

---

### Task 2
The following code contains a list of usernames with a syntax issue. Run the code, observe the error, and fix it.

```python
# Assign `usernames_list` to a list of usernames
usernames_list = ["djames", "jpark", "tbailey", "zdutchma", "esmith", "srobinso", "dcoleman", "fbautist"]

# Display `usernames_list`
print(usernames_list)
```

#### Question 2
**What happens when you run the code before modifying it? How can you fix it?**  
The output shows `SyntaxError: invalid syntax` due to a missing closing quotation mark and a missing comma. To fix it, ensure all usernames are properly quoted and separated by commas.

---

### Task 3
Run the following code to identify and fix a syntax error:

```python
# Display a message in upper case
print("update needed".upper())
```

#### Question 3
**What happens when you run the code before modifying it? What is causing the error?**  
The output shows `SyntaxError: unexpected EOF while parsing`. This is caused by a missing closing parenthesis in the `print()` statement. Adding the parenthesis resolves the issue.

---

### Task 4
This code determines whether a username is approved. It contains multiple errors. Fix the code step by step:

```python
# Assign `usernames_list` to a list of approved usernames
usernames_list = ["djames", "jpark", "tbailey", "zdutchma", "esmith", "srobinso", "dcoleman", "fbautist"]

# Assign `username` to a specific username
username = "esmith"

# For loop to check if the username is approved
for name in usernames_list:
    if name == username:
        print("The user is an approved user")
```

#### Question 4
**What happens when you run the code before modifying it? How can you fix it?**  
The first error is a syntax error caused by using `=` instead of `==` in the `if` statement. Fix it by replacing `=` with `==`. Also, ensure proper indentation for the `print()` statement and fix any typos in variable names.

---

### Task 5
Run the following code and fix the error:

```python
# Assign `usernames_list` to a list of usernames
usernames_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab"]

# Assign `username` to a specific username
username = "eraab"

# Check if the username is the last one in the list
if username == usernames_list[4]:
    print("This username is the final one in the list.")
```

#### Question 5
**What happens when you run the code before modifying it? How can you fix it?**  
The output shows `IndexError: list index out of range` because the index `4` exceeds the list length. Use the correct index (`-1` for the last element) to fix the error.

---

### Task 6
This code removes invalid IP addresses from a file. Identify and fix errors:

```python
# Assign `import_file` to the name of the text file
import_file = "allow_list.txt"

# Assign `remove_list` to a list of disallowed IP addresses
remove_list = ["192.168.97.225", "192.168.158.170", "192.168.201.40", "192.168.58.57"]

# Read the file and process IP addresses
with open(import_file, "r") as file:
    ip_addresses = file.read()

# Convert `ip_addresses` to a list
ip_addresses = ip_addresses.split()

# Remove disallowed IPs
for element in remove_list:
    if element in ip_addresses:
        ip_addresses.remove(element)

# Display the updated IP list
print(ip_addresses)
```

#### Question 6
**What happens when you run the code before modifying it? What is causing the errors? How can you fix them?**  
The first error is a missing colon (`:`) in the `with` statement header. The second error is an invalid method call. Replace `split.ip_addresses()` with `ip_addresses.split()` to fix it.

---

### Task 7
Fix the logic errors in this code to display the correct patch date for each operating system:

```python
# Assign `system` to a specific operating system
system = "OS 2"

# Assign `patch_schedule` to patch dates
patch_schedule = ["March 1st", "April 1st", "May 1st"]

# Determine the patch date
if system == "OS 1":
    print("Patch date:", patch_schedule[0])
elif system == "OS 2":
    print("Patch date:", patch_schedule[1])
elif system == "OS 3":
    print("Patch date:", patch_schedule[2])
```

#### Question 7
**What happens when you run the code before modifying it? What is causing the logic errors? How can you fix them?**  
The patch dates are incorrect because of wrong index values. Use `patch_schedule[0]`, `patch_schedule[1]`, and `patch_schedule[2]` for OS 1, OS 2, and OS 3 respectively.

---

## Conclusion
### Key Takeaways:
1. Debugging is essential for ensuring code runs smoothly.
2. Python stops executing when it encounters an error, so fix errors step by step.
3. Common errors include:
   - **Syntax Errors**: Caused by missing colons, parentheses, or other punctuation.
   - **Logic Errors**: Incorrect indices or conditions.
   - **Exceptions**: Due to typos or invalid method calls.
4. Always test the code after fixing it to confirm everything works as expected.
