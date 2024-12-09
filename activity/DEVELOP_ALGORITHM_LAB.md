# Develop an Algorithm

## Introduction
An algorithm is a set of steps that can be used to solve a problem. Security analysts develop algorithms to provide the solutions that they need for their work. For example, an analyst may work with users who bring them devices. The analyst may need an algorithm that first checks if a user is approved to access the system and then checks if the device that they have brought is the one assigned to them.

In this lab, you'll develop an algorithm in Python that automates this process.

## Tips for completing this lab

## Scenario
In this lab, you're working as a security analyst and you're responsible for developing an algorithm that connects users to their assigned devices. You'll write code that indicates if a user is approved on the system and has brought their assigned device to the security team.

## Task 1
You'll work with a list of approved usernames along with a list of the approved devices assigned to these users. The elements of the two lists are synchronized. In other words, the user at index 0 in `approved_users` uses the device at index 0 in `approved_devices`. Later, this will allow you to verify if the username and device ID entered by a user correspond to each other.

### Code:
```python
# Assign `approved_users` to a list of approved usernames
approved_users = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab"]

# Assign `approved_devices` to a list of device IDs that correspond to the usernames in `approved_users`
approved_devices = ["8rp2k75", "hl0s5o1", "2ye3lzg", "4n482ts", "a307vir"]

# Display the element at the specified index in `approved_users`
print(approved_users[0])

# Display the element at the specified index in `approved_devices`
print(approved_devices[0])
```

### Output:
```
elarson
8rp2k75
```

### Question 1
**What did you observe about the output when `approved_users[0]` is displayed and when `approved_devices[0]` is displayed?**

- The output shows the first approved username and device ID. Changing the index displays the elements at the corresponding position.

---

## Task 2
There's a new employee joining the organization, and they need to be provided with a username and device ID.

### Code:
```python
# Assign `approved_users` to a list of approved usernames
approved_users = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab"]

# Assign `approved_devices` to a list of device IDs that correspond to the usernames in `approved_users`
approved_devices = ["8rp2k75", "hl0s5o1", "2ye3lzg", "4n482ts", "a307vir"]

# Assign `new_user` to the username of a new approved user
new_user = "gesparza"

# Assign `new_device` to the device ID of the new approved user
new_device = "3rcv4w6"

# Add that user's username and device ID to `approved_users` and `approved_devices` respectively
approved_users.append(new_user)
approved_devices.append(new_device)

# Display the contents of `approved_users`
print(approved_users)

# Display the contents of `approved_devices`
print(approved_devices)
```

### Output:
```
['elarson', 'bmoreno', 'tshah', 'sgilmore', 'eraab', 'gesparza']
['8rp2k75', 'hl0s5o1', '2ye3lzg', '4n482ts', 'a307vir', '3rcv4w6']
```

### Question 2
**After the new approved user is added, what did you observe?**

- The new username and device ID were successfully added to the end of their respective lists.

---

## Task 3
An employee has left the team and should no longer have access to the system.

### Code:
```python
# Assign `approved_users` to a list of approved usernames
approved_users = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab", "gesparza"]

# Assign `approved_devices` to a list of device IDs that correspond to the usernames in `approved_users`
approved_devices = ["8rp2k75", "hl0s5o1", "2ye3lzg", "4n482ts", "a307vir", "3rcv4w6"]

# Assign `removed_user` to the username of the employee who has left the team
removed_user = "tshah"

# Assign `removed_device` to the device ID of the employee who has left the team
removed_device = "2ye3lzg"

# Remove that employee's username and device ID from `approved_users` and `approved_devices` respectively
approved_users.remove(removed_user)
approved_devices.remove(removed_device)

# Display `approved_users`
print(approved_users)

# Display `approved_devices`
print(approved_devices)
```

### Output:
```
['elarson', 'bmoreno', 'sgilmore', 'eraab', 'gesparza']
['8rp2k75', 'hl0s5o1', '4n482ts', 'a307vir', '3rcv4w6']
```

### Question 3
**After the user who left the team is removed, what did you observe?**

- The removed username and device ID are no longer part of their respective lists.

---

... (Continue similarly for other tasks and questions, following the lab content provided by the user)
