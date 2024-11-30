
# Linux Commands Activity - Exemplar Walkthrough

## Activity Overview
In this lab activity, you’ll navigate a Linux file structure, locate files, and read the contents of files. You’ll also answer a few multiple-choice questions based on the information contained in these files.

## Scenario
You have to locate and analyze the information of certain files located in the `/home/analyst` directory.

### Tasks:
1. Get the information of the current working directory and display its contents.
2. Navigate to the `reports` directory and list the subdirectories it contains.
3. Navigate to the `users` subdirectory and display the contents of the `Q1_added_users.txt` file.
4. Navigate to the `logs` directory and display the first 10 lines of a file it contains.

---

## Task 1: Get the Current Directory Information

### 1. Display the current working directory:
```bash
pwd
```

Output:
```
/home/analyst
```

### 2. Display the names of the files and directories in the current working directory:
```bash
ls
```

Output:
```
logs  projects  reports  temp
```

**Questions:**
- **Which directory is your current working directory?**
  - Answer: `/home/analyst`
- **How many directories does the current working directory contain?**
  - Answer: Four subdirectories (`logs`, `projects`, `reports`, `temp`).

---

## Task 2: Change Directory and List Subdirectories

### 1. Navigate to the `/home/analyst/reports` directory:
Using a relative path:
```bash
cd reports
```
Using an absolute path:
```bash
cd /home/analyst/reports
```

### 2. Display the files and subdirectories in the `/home/analyst/reports` directory:
```bash
ls
```

Output:
```
users
```

**Question:**
- **What is the name of the subdirectory in the `/home/analyst/reports` directory?**
  - Answer: `users`

---

## Task 3: Locate and Read the Contents of a File

### 1. Navigate to the `/home/analyst/reports/users` directory:
Using an absolute path:
```bash
cd /home/analyst/reports/users
```
Using a relative path:
```bash
cd users
```

### 2. List the files in the current directory:
```bash
ls
```

### 3. Display the contents of the `Q1_added_users.txt` file:
Using a relative path:
```bash
cat Q1_added_users.txt
```
Using an absolute path:
```bash
cat /home/analyst/reports/users/Q1_added_users.txt
```

**Questions:**
- **What department does the employee with the username `aezra` work in?**
  - Answer: Human Resources
- **What is the `employee_id` of the user `mreed` in the Information Technology department?**
  - Answer: 1104

---

## Task 4: Navigate to a Directory and Locate a File

### 1. Navigate to the `/home/analyst/logs` directory:
```bash
cd /home/analyst/logs
```

### 2. Display the name of the file it contains:
```bash
ls
```

Output:
```
server_logs.txt
```

### 3. Display the first 10 lines of this file:
```bash
head server_logs.txt
```

**Question:**
- **How many warning messages are in the first 10 lines of the `server_logs.txt` file?**
  - Answer: Three warning messages.

---

## Conclusion
You now have practical experience in using basic Linux Bash shell commands:
- Navigate directory structures with the `cd` command.
- Display the current working directory with the `pwd` command.
- List the contents of a directory with the `ls` command.
- Display the contents of files with the `cat` and `head` commands.

Navigating through directories and reading file contents are fundamental skills that you’ll often use when communicating through the shell.
