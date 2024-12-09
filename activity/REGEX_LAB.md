# Use Regular Expressions to Find Patterns

## Introduction
Security analysts often analyze log files, including those that contain information about login attempts. For example, as an analyst, you might flag IP addresses that relate to unusual attempts to log in to the system.

Another area of focus in cybersecurity is detecting devices that require updates. Software updates help prevent security issues due to vulnerabilities.

Using regular expressions in Python can help automate the processes involved in both of these areas of cybersecurity. Regular expression patterns and functions can be used to efficiently extract important information from strings and files.

In this lab, you'll write regular expressions to extract information such as device IDs or IP addresses.

---

## Scenario
In this lab, you're working as a security analyst and your main tasks are as follows:

- Extracting device IDs containing certain characters from a log; these characters correspond with a certain operating system that requires an update.
- Extracting all IP addresses from a log and then comparing them to those that are flagged in a list.

---

## Tasks

### Task 1
In order to work with regular expressions in Python, start by importing the `re` module. This module contains many functions that will help you work with regular expressions.

```python
# Import the `re` module in Python
import re
```

---

### Task 2
Display the contents of the `devices` string to examine what it contains.

```python
# Assign `devices` to a string containing device IDs, each device ID represented by alphanumeric characters
devices = "r262c36 67bv8fy 41j1u2e r151dm4 1270t3o 42dr56i r15xk9h 2j33krk 253be78 ac742a1 r15u9q5 zh86b2l ii286fq 9x482kt 6oa6m6u x3463ac i4l56nq g07h55q 081qc9t r159r1u"

# Display the contents of `devices`
print(devices)
```

---

### Task 3
Write a regular expression pattern to find devices that start with "r15".

```python
# Assign `target_pattern` to a regular expression pattern for finding device IDs that start with "r15"
target_pattern = "r15\w+"
```

---

### Task 4
Use the `findall()` function from the `re` module to find the device IDs that the pattern matches with.

```python
# Use `re.findall()` to find the device IDs that start with "r15" and display the results
print(re.findall(target_pattern, devices))
```

---

### Task 5
Display the contents of the `log_file` string to examine the login details inside.

```python
# Assign `log_file` to a string containing login attempts with usernames, timestamps, and IP addresses
log_file = "eraab 2022-05-10 6:03:41 192.168.152.148 \niuduike 2022-05-09 6:46:40 192.168.22.115 ..."

# Display contents of `log_file`
print(log_file)
```

---

### Task 6
Write a regular expression pattern to match IP addresses with four segments of three digits each.

```python
# Assign `pattern` to a regular expression pattern that matches IP addresses of the form xxx.xxx.xxx.xxx
pattern = "\d{3}\.\d{3}\.\d{3}\.\d{3}"
```

---

### Task 7
Use `re.findall()` to extract IP addresses matching the pattern.

```python
# Use `re.findall()` to extract IP addresses of the form xxx.xxx.xxx.xxx and display the results
print(re.findall(pattern, log_file))
```

---

### Task 8
Adjust the pattern to allow segments with 1 to 3 digits.

```python
# Update `pattern` to match IP addresses with any variation in segment lengths
pattern = "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"

# Extract updated IP addresses and display results
print(re.findall(pattern, log_file))
```

---

### Task 9
Filter out invalid IP addresses by restricting each segment to a maximum of 3 digits.

```python
# Assign `pattern` to match valid IP addresses only
pattern = "\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"

# Extract valid IP addresses
valid_ip_addresses = re.findall(pattern, log_file)
print(valid_ip_addresses)
```

---

### Task 10
Display the flagged IP addresses list.

```python
# Assign `flagged_addresses` to a list of previously flagged IP addresses
flagged_addresses = ["192.168.190.178", "192.168.96.200", "192.168.174.117", "192.168.168.144"]

# Display flagged addresses
print(flagged_addresses)
```

---

### Task 11
Check each valid IP address against the flagged list.

```python
# Check if each valid IP address is flagged
for address in valid_ip_addresses:
    if address in flagged_addresses:
        print(f"The IP address {address} has been flagged for further analysis.")
    else:
        print(f"The IP address {address} does not require further analysis.")
```

---

## Conclusion
Key takeaways from this lab:

- Regular expressions in Python allow you to create patterns to extract specific information from strings.
- Symbols like `\w`, `\d`, `+`, and `{x,y}` help define flexible matching criteria.
- The `re` module provides functions like `findall()` to apply regex patterns to strings.
- Filtering and analyzing data can be automated using regex and iteration in Python.
