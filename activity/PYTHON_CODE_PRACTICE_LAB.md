# Practice Writing Python Code

## Introduction

Python is a programming language that helps in automating instructions to the computer in a variety of contexts, including security contexts. Writing code in Python is a valuable skill that helps security analysts thrive in their technical work.

In this lab, you'll practice writing your first Python code while learning about a notebook environment. The hands-on practice you engage in throughout the labs will help you apply Python coding skills to your work as a security analyst. You'll benefit the most from the labs if you make sure to not only write in the cells that you're prompted to fill in, but also analyze all the cells thoroughly.

---

## Tips for Completing This Lab

### Scenario

As a security analyst, you'll often use notebook environments and notebooks to write and run code. This lab will help you get familiar with working in a notebook environment, writing code comments in Python, and displaying strings with the `print()` function.

In this lab, you'll complete a series of tasks that involve observing and running some pre-written cells of text and code, as well as filling in cells with your own text, Python code, and code comments.

---

## Task 1

The lab environment you're working in is a notebook-based coding environment. Notebooks, such as this one, consist of two types of cells: (1) text cells, also known as markdown cells, and (2) code cells.

Markdown cells allow you to write plain text and format it in the markdown language. Markdown language is used for formatting plain text in text editors and code editors. For example, you can use markdown to make headers, bold or italicize words, format text as code, add hyperlinks, and more.

For this task, write something into the following markdown cell. Replace the placeholder text with your own text.

```markdown
This is a markdown cell, and you can write text in here.
```

---

## Task 2

In Python notebooks, code cells allow you to write code comments and code in Python.

To run a code cell, first place your cursor on the cell. Then, you can either click on the play icon or press the Shift and Enter keys.

For this task, run the following code cell as is and observe the output:

```python
# This cell displays "Hello world!"
print("Hello world!")
```

**Question 1:**  
What do you observe about the output after you ran the code cell?  
**Answer:** The output shows the statement `Hello world!` on the screen.

---

## Task 3

Writing code comments is a way to document the intention behind code. It's a standard that analysts commonly use in their workflow. Writing comments that accompany code allows you to keep track of the technical decisions you've made in your project. 

For this task, run the following code cell as is and observe the output:

```python
# In Python, comments do not get displayed
# This code cell contains only comments
```

**Question 2:**  
What do you observe about the output after you ran the cell above?  
**Answer:** There is no output. This is because the code cell above consists of comments, which Python ignores during execution.

---

## Task 4

Add a comment at the beginning of the following code cell describing what the code is doing:

```python
# This cell displays "I am using Python."
print("I am using Python.")
```

**Question 3:**  
What do you observe about the output after you ran the cell above?  
**Answer:** The output is `I am using Python.` Quotes around a string do not appear in the output.

---

## Task 5

Use `print()` to display the message "I am a security analyst.":

```python
# This cell displays "I am a security analyst."
print("I am a security analyst.")
```

**Question 4:**  
What do you observe about the output after you ran the cell above?  
**Answer:** The output is `I am a security analyst.`

---

## Task 6

Write a `print()` statement to display the string "Python is useful for security!":

```python
# This cell displays "Python is useful for security!"
print("Python is useful for security!")
```

**Question 5:**  
What do you observe about the output after you ran the cell above?  
**Answer:** The output is `Python is useful for security!`

---

## Task 7

Combine all the `print()` statements into one code cell:

```python
# This cell displays all the statements written so far
print("Hello world!")
print("I am using Python.")
print("I am a security analyst.")
print("Python is useful for security!")
```

**Question 6:**  
What do you observe about the output after you ran the cell above?  
**Answer:** Each line in the output corresponds to a `print()` statement in the code, executed sequentially.

---

## Conclusion

Key takeaways from this lab:
- It's helpful to use code comments to document the decisions you make as you code.
- Code comments are ignored by computers; they're read by you and your team to understand the intentions behind the code.
- You can write comments in Python using the hash symbol (`#`).
- You can use `print()` in Python to display information to the screen.
- When you use `print()` to display a string, the quotes around the string do not appear in the output.
