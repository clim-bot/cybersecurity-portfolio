# Create More Functions

## Introduction

Built-in functions are functions that exist within Python and can be called directly. They help analysts efficiently complete tasks. Python also supports user-defined functions. These are functions that analysts write for their specific needs.

For example, patterns in login attempts could reveal suspicious activity. Python functions can help analysts work efficiently with lists of login attempts. Both built-in functions and user-defined functions in Python can help security analysts analyze login attempts.

In this lab, you'll use built-in functions to work with a list of failed login attempts per month to prepare it for further analysis, and you'll define a function that compares the user's login attempts for the current day to their average number of login attempts.

---

## Tips for Completing This Lab

### Scenario

In your work as a security analyst, you're responsible for working with a list that contains the number of failed attempts that occurred each month. You'll identify any patterns that might indicate malicious activity. You're also responsible for defining a function that compares the logins for the current day to an average and improving it by adding a return statement.

---

## Task 1

Sort the list of failed login attempts per month.

```python
# Assign `failed_login_list` to the list of the number of failed login attempts per month 
failed_login_list = [119, 101, 99, 91, 92, 105, 108, 85, 88, 90, 264, 223]

# Sort `failed_login_list` in ascending numerical order and display the result
print(sorted(failed_login_list))
```

**Output**:
```
[85, 88, 90, 91, 92, 99, 101, 105, 108, 119, 223, 264]
```

**Question 1**  
What do you observe from the output above? Do you notice any outlying numbers that indicate an increase in the failed number of login attempts?  

**Answer**  
The sorted list starts with the lowest number of failed login attempts and ends with the highest. The numbers `223` and `264` seem to be outliers, indicating an increase in failed login attempts.

---

## Task 2

Find the highest number of failed login attempts.

```python
# Assign `failed_login_list` to the list of the number of failed login attempts per month 
failed_login_list = [119, 101, 99, 91, 92, 105, 108, 85, 88, 90, 264, 223]

# Determine the highest number of failed login attempts and display the result 
print(max(failed_login_list))
```

**Output**:
```
264
```

**Question 2**  
What do you observe from the output above?  

**Answer**  
The highest number of failed login attempts is `264`.

---

## Task 3

Define a function to display a user's daily login attempts.

```python
# Define a function named `analyze_logins()`
def analyze_logins(username, current_day_logins):
    # Display a message about the user's daily login attempts
    print("Current day login total for", username, "is", current_day_logins)
```

---

## Task 4

Call the `analyze_logins()` function with arguments `"ejones"` and `9`.

```python
# Call `analyze_logins()`
analyze_logins("ejones", 9)
```

**Output**:
```
Current day login total for ejones is 9
```

**Question 3**  
What does this function display? Would the output vary for different users?  

**Answer**  
This function displays the current day login total for the user. The output changes based on the user's name and login count.

---

## Task 5

Expand the function to display the average daily login attempts.

```python
# Define a function named `analyze_logins()` with an additional parameter
def analyze_logins(username, current_day_logins, average_day_logins):
    print("Current day login total for", username, "is", current_day_logins)
    print("Average logins per day for", username, "is", average_day_logins)

# Call `analyze_logins()`
analyze_logins("ejones", 9, 3)
```

**Output**:
```
Current day login total for ejones is 9
Average logins per day for ejones is 3
```

---

## Task 6

Add a calculation for the login ratio.

```python
# Define a function named `analyze_logins()`
def analyze_logins(username, current_day_logins, average_day_logins):
    print("Current day login total for", username, "is", current_day_logins)
    print("Average logins per day for", username, "is", average_day_logins)
    login_ratio = current_day_logins / average_day_logins
    print(username, "logged in", login_ratio, "times as much as they do on an average day.")

# Call `analyze_logins()`
analyze_logins("ejones", 9, 3)
```

**Output**:
```
Current day login total for ejones is 9
Average logins per day for ejones is 3
ejones logged in 3.0 times as much as they do on an average day.
```

**Question 4**  
What does this version of the function display?  

**Answer**  
This version displays the user's daily login total, average logins per day, and the ratio of current day logins to their average.

---

## Task 7

Add a return statement to output the login ratio.

```python
# Define a function named `analyze_logins()`
def analyze_logins(username, current_day_logins, average_day_logins):
    print("Current day login total for", username, "is", current_day_logins)
    print("Average logins per day for", username, "is", average_day_logins)
    login_ratio = current_day_logins / average_day_logins
    return login_ratio

# Call `analyze_logins()`
login_analysis = analyze_logins("ejones", 9, 3)
print("ejones logged in", login_analysis, "times as much as they do on an average day.")
```

**Output**:
```
Current day login total for ejones is 9
Average logins per day for ejones is 3
ejones logged in 3.0 times as much as they do on an average day.
```

---

## Task 8

Use the `login_analysis` value in a conditional statement.

```python
# Call `analyze_logins()`
login_analysis = analyze_logins("ejones", 9, 3)

# Conditional statement to check login activity
if login_analysis >= 3:
    print("Alert! This account has more login activity than normal.")
```

**Output**:
```
Current day login total for ejones is 9
Average logins per day for ejones is 3
Alert! This account has more login activity than normal.
```

---

## Conclusion

**Key Takeaways**:
- Functions can display or return values for reuse.
- Python's built-in functions like `sorted()` and `max()` are efficient for analyzing lists.
- Conditional statements help identify unusual patterns, like high login activity.
