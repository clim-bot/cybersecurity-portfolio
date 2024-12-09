# Create Loops

## Introduction
As a security analyst, some of the measures you take to protect a system will involve repetition. For example, you might need to investigate multiple IP addresses that have attempted to connect to the network. In Python, iterative statements can help automate repetitive processes like these to make them more efficient.

In this lab, you will practice writing iterative statements in Python.

---

## Scenario
You're working as a security analyst, and you're writing programs in Python to automate displaying messages regarding network connection attempts, detecting IP addresses that are attempting to access restricted data, and generating employee ID numbers for a Sales department.

---

## Task 1
Write an iterative statement that displays "Connection could not be established" three times using the `for` keyword, the `range()` function, and a loop variable `i`.

```python
# Iterative statement using `for`, `range()`, and a loop variable of `i`
# Display "Connection could not be established." three times

for i in range(3):
    print("Connection could not be established.")
```
### Output:
```
Connection could not be established.
Connection could not be established.
Connection could not be established.
```

---

## Task 2
Use a variable to control the number of iterations. Assign a positive integer to a variable called `connection_attempts` and use it in the `range()` function.

```python
# Create a variable called `connection_attempts` that stores the number of attempts
connection_attempts = 3

# Iterative statement using `for`, `range()`, and `connection_attempts`
for i in range(connection_attempts):
    print("Connection could not be established")
```
### Output:
```
Connection could not be established.
Connection could not be established.
Connection could not be established.
```

---

## Task 3
Achieve the same output using a `while` loop. The loop should run until a specific condition is met.

```python
# Assign `connection_attempts` to an initial value of 0
connection_attempts = 0

# Use `while` to display the message three times
while connection_attempts < 3:
    print("Connection could not be established")
    connection_attempts += 1
```
### Output:
```
Connection could not be established.
Connection could not be established.
Connection could not be established.
```

---

## Task 4
Automate checking whether IP addresses are part of an allow list. Start by displaying all IP addresses from a list.

```python
# Assign `ip_addresses` to a list of IPs from which users have tried to log in
ip_addresses = ["192.168.142.245", "192.168.109.50", "192.168.86.232", 
                "192.168.131.147", "192.168.205.12", "192.168.200.48"]

# For loop that displays the elements of `ip_addresses` one at a time
for i in ip_addresses:
    print(i)
```
### Output:
```
192.168.142.245
192.168.109.50
192.168.86.232
192.168.131.147
192.168.205.12
192.168.200.48
```

---

## Task 5
Write an `if` statement inside the loop to check if an IP address is in the `allow_list`.

```python
# Assign `allow_list` to a list of allowed IPs
allow_list = ["192.168.243.140", "192.168.205.12", "192.168.151.162", 
              "192.168.178.71", "192.168.86.232", "192.168.3.24"]

# Assign `ip_addresses` to a list of IPs trying to log in
ip_addresses = ["192.168.142.245", "192.168.109.50", "192.168.86.232", 
                "192.168.131.147", "192.168.205.12", "192.168.200.48"]

for i in ip_addresses:
    if i in allow_list:
        print(f"{i} is allowed")
    else:
        print(f"{i} is not allowed")
```
### Output:
```
192.168.142.245 is not allowed
192.168.109.50 is not allowed
192.168.86.232 is allowed
192.168.131.147 is not allowed
192.168.205.12 is allowed
192.168.200.48 is not allowed
```

---

## Task 6
Use the `break` keyword to terminate the loop if an IP address is not in the `allow_list`.

```python
for i in ip_addresses:
    if i in allow_list:
        print(f"{i} is allowed")
    else:
        print(f"{i} is not allowed. Further investigation of login activity required")
        break
```
### Output:
```
192.168.142.245 is not allowed. Further investigation of login activity required
```

---

## Task 7
Generate unique employee IDs for the Sales department. The IDs must be divisible by 5 and range from 5000 to 5150 (inclusive).

```python
# Start with the loop variable `i` at 5000
i = 5000

# Generate IDs using a `while` loop
while i <= 5150:
    print(i)
    i += 5
```
### Output:
```
5000
5005
5010
...
5145
5150
```

---

## Task 8
Incorporate a message when the loop variable reaches 5100.

```python
i = 5000

while i <= 5150:
    print(i)
    if i == 5100:
        print("Only 10 valid employee IDs remaining")
    i += 5
```
### Output:
```
5000
5005
...
5100
Only 10 valid employee IDs remaining
5105
...
5150
```

---

## Question 2
**Why is `print(i)` placed before the conditional rather than inside it?**  
To ensure every employee ID is displayed, `print(i)` is placed before the conditional. If it were inside, only IDs meeting the condition (e.g., `i == 5100`) would be displayed.

---

## Conclusion
Key takeaways from this lab:
- **For Loops**: Use for fixed repetitions.  
- **While Loops**: Use for flexible, condition-based repetition.  
- **Conditional Statements**: Add logic to loops for specific tasks.  
- **Break Statement**: Use to stop loops when needed.  
- **Automation**: Loops and conditions simplify repetitive tasks like managing access and generating IDs.
