
# Get Help in the Command Line

## Activity Overview

As a security analyst, you won’t always have all the answers, but Linux provides resources directly in the command line to help you. In this lab, you will:
- Use the `man` and `whatis` commands to learn about other commands and their options.
- Use the `apropos` command to search for commands based on keywords.

By completing this lab, you’ll become proficient in using Linux's built-in help system.

---

## Scenario

You need to:
1. Learn more about specific Linux commands.
2. Identify the correct command for specific tasks.
3. Explore command options to perform tasks effectively.

---

## Task 1: Learn More About Commands

### Step 1: Use `whatis` to Get a Short Description
Command:
```bash
whatis cat
```
**Answer**: The first two words of the short description returned are "concatenate files".

---

### Step 2: Use `man` to Get More Details
Command:
```bash
man cat
```
**Question**: What option can you use to number the output lines of the `cat` command?  
**Answer**: `-n, --number`

---

### Step 3: Use `apropos` to Find a Command by Keywords
Command:
```bash
apropos -a first part file
```
**Question**: Which command returns the first part of a file?  
**Answer**: `head`

---

## Task 2: Explore the `useradd` Command

### Step 1: Use `man` to Learn About `useradd`
Command:
```bash
man useradd
```
**Question**: Which option can be used with the `useradd` command to set an expiration date for a temporary user account?  
**Answer**: `-e`

---

## Task 3: Explore the `rm` and `rmdir` Commands

### Step 1: Use `whatis` to Compare Commands
Commands:
```bash
whatis rm
whatis rmdir
```
**Question**: Which command removes only empty directories?  
**Answer**: `rmdir`

---

## Task 4: Determine Which Command to Use

### Step 1: Use `apropos` to Search for a Command
Command:
```bash
apropos -a create new group
```
**Question**: What command can you use to create a new group?  
**Answer**: `groupadd`

---

## Conclusion

Great work! In this lab, you learned how to:
1. Get a short description of a command using `whatis`.
2. Display detailed information about a command with `man`.
3. Search for commands based on their functionality using `apropos`.

These skills are invaluable as you navigate the Linux command line and troubleshoot tasks.

---

## End Your Lab

1. Click **End Lab** and confirm.
2. Provide feedback if desired.
3. Refresh the course tab to mark the lab as complete.
