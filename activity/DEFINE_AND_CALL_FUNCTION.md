# Define and Call a Function

## Introduction

As a security analyst, when you're writing out Python code to automate a certain task, you'll often find yourself needing to reuse the same block of code more than once. This is why functions are important. You can call that function whenever you need the computer to execute those steps. Python not only has built-in functions that have already been defined, but also provides the tools for users to define their own functions. Security analysts often define and call functions in Python to automate seri...

In this lab, you'll practice defining and calling functions in Python.

---

## Tips for Completing This Lab

### Scenario

Writing functions in Python is a useful skill in your work as a security analyst. In this lab, you'll define and call a function that displays an alert about a potential security issue. Also, you'll work with a list of employee usernames, creating a function that converts the list into one string.

---

## Task 1

Analyze the following user-defined function `alert()`. 

```python
# Define a function named `alert()` 
def alert():
    print("Potential security issue. Investigate further.")
```

**Question 1**  
Summarize what the user-defined function above does in your own words. Think about what the output would be if this function were called.

**Answer**  
The `alert()` function displays the string `"Potential security issue. Investigate further."` to the screen. This function can be used to inform security analysts about potential security issues in a system. If this function were called, the output would show `Potential security issue. Investigate further.` Recall that when a string is displayed, the quotes around the string do not appear in the output.

---

## Task 2

Call the `alert()` function that was defined earlier and analyze the output.

```python
# Define a function named `alert()` 
def alert():
    print("Potential security issue. Investigate further.")

# Call the `alert()` function
alert()
```

**Output**  
```
Potential security issue. Investigate further.
```

**Question 2**  
What are the advantages of placing this code in a function rather than running it directly?  

**Answer**  
Placing the code in a function allows you to efficiently reuse the code. Whenever you need to display the message about a potential security issue and further investigation, you can just call the `alert()` function. The alternative would be to write out that `print()` statement every time, which would be tedious.

---

## Task 3

Modify the `alert()` function to include a `for` loop to display the alert message multiple times. Call the updated function.

```python
# Define a function named `alert()`
def alert(): 
    for i in range(3):
        print("Potential security issue. Investigate further.")

# Call the `alert()` function
alert()
```

**Output**  
```
Potential security issue. Investigate further.
Potential security issue. Investigate further.
Potential security issue. Investigate further.
```

**Question 3**  
How does the output above compare to the output from calling the previous version of the `alert()` function? How are the two definitions of the function different?  

**Answer**  
The output shows `Potential security issue. Investigate further.` three times, each time appearing on a new line. Meanwhile, the output from calling the previous version of `alert()` shows the message only once. The difference in behavior is due to the `for` loop used in the second version. This loop iterates over a range of numbers (specified by `range(3)`) and executes a `print()` statement in each iteration.

---

## Task 4

Define a function named `list_to_string()` that helps convert a list of approved usernames into a single string.

```python
# Define a function named `list_to_string()`
def list_to_string():
    pass  # Placeholder for the function body
```

---

## Task 5

Complete the body of the `list_to_string()` function to iterate through a list of usernames and display each username.

```python
# Define a function named `list_to_string()`
def list_to_string():

    # Store the list of approved usernames in a variable named `username_list`
    username_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab", "gesparza", "alevitsk", "wjaffrey"]

    # Write a for loop that iterates through the elements of `username_list` and displays each element
    for i in username_list:
        print(i)

# Call the `list_to_string()` function
list_to_string()
```

**Output**  
```
elarson
bmoreno
tshah
sgilmore
eraab
gesparza
alevitsk
wjaffrey
```

**Question 4**  
What do you observe from the output above?  

**Answer**  
The output shows each element from `username_list` on a new line.

---

## Task 6

Use string concatenation to modify how the `list_to_string()` function is defined. Combine all usernames into one string.

```python
# Define a function named `list_to_string()`
def list_to_string():

    # Store the list of approved usernames in a variable named `username_list`
    username_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab", "gesparza", "alevitsk", "wjaffrey"]

    # Assign `sum_variable` to an empty string
    sum_variable = ""

    # Write a for loop that iterates through the elements of `username_list` and concatenates them
    for i in username_list:
        sum_variable = sum_variable + i

    # Display the value of `sum_variable`
    print(sum_variable)

# Call the `list_to_string()` function
list_to_string()
```

**Output**  
```
elarsonbmorenotshahsgilmoreeraabgesparzaalevitskwjaffrey
```

**Question 5**  
What do you observe from the output above?  

**Answer**  
The output shows all the elements from `username_list` merged together in one line. In its current format, the output is difficult to read. It's difficult to decipher where one username ends and the next begins.

---

## Task 7

Modify the function to add a comma and space (", ") after each username to improve readability.

```python
# Define a function named `list_to_string()`
def list_to_string():

    # Store the list of approved usernames in a variable named `username_list`
    username_list = ["elarson", "bmoreno", "tshah", "sgilmore", "eraab", "gesparza", "alevitsk", "wjaffrey"]

    # Assign `sum_variable` to an empty string
    sum_variable = ""

    # Write a for loop that iterates through the elements of `username_list`
    for i in username_list:
        sum_variable = sum_variable + i + ", "

    # Display the value of `sum_variable`
    print(sum_variable)

# Call the `list_to_string()` function
list_to_string()
```

**Output**  
```
elarson, bmoreno, tshah, sgilmore, eraab, gesparza, alevitsk, wjaffrey, 
```

**Question 6**  
What do you notice about the output from the function call this time?  

**Answer**  
The output shows all the elements from `username_list` in one line. This time, there's a comma and a space after each username. This format is much easier to read. It's easier to distinguish one username from the next.

---

## Conclusion

**Key Takeaways**  
- Python allows you to define and call functions that you create.  
- The main components of a function include the function header and the function body.  
- The function header includes the `def` keyword, followed by the name of the function, followed by parentheses, followed by a colon.  
- The function body includes an indented block of code that instructs the computer on what to do when the function is called.  
- String concatenation involves using the addition operator (`+`) to combine multiple strings together.  
- One use case for string concatenation is combining the strings from a list into one large string.
