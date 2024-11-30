# Exemplar: Filter with grep

## Activity Overview
In this lab activity, you’ll use the `grep` command and piping to search for files and return specific information from files. 

## Scenario
You need to obtain information contained in server log and user data files. You also need to find files with specific names.

### Tasks:
1. Navigate to the `logs` directory and return the error messages in the `server_logs.txt` file.
2. Navigate to the `users` directory and search for files that contain a specific string in their names.
3. Search for information contained in user files.

---

## Task 1: Search for Error Messages in a Log File

### 1. Navigate to the `/home/analyst/logs` directory:
```bash
cd logs
```

### 2. Use `grep` to filter the `server_logs.txt` file and return all lines containing the text string `error`:
```bash
grep error server_logs.txt
```

**Question:**
- **How many error lines are there in the `server_logs.txt` file?**
  - Answer: Six entries.

---

## Task 2: Find Files Containing Specific Strings

### 1. Navigate to the `/home/analyst/reports/users` directory:
```bash
cd /home/analyst/reports/users
```

### 2. Use `ls` and `grep` to list files containing the string `Q1` in their names:
```bash
ls | grep Q1
```

**Question:**
- **How many files in the `/home/analyst/reports/users` directory contain "Q1" in their names?**
  - Answer: Three files.

### 3. List the files that contain the word `access` in their names:
```bash
ls | grep access
```

**Question:**
- **How many files in the `/home/analyst/reports/users` directory contain "access" in their names?**
  - Answer: Four files.

---

## Task 3: Search More File Contents

### 1. Display the files in the `/home/analyst/reports/users` directory:
```bash
ls
```

### 2. Search the `Q2_deleted_users.txt` file for the username `jhill`:
```bash
grep jhill Q2_deleted_users.txt
```

**Question:**
- **Did you find the username `jhill` in the `Q2_deleted_users.txt` file?**
  - Answer: Yes.

### 3. Search the `Q4_added_users.txt` file to list users added to the Human Resources department:
```bash
grep "Human Resources" Q4_added_users.txt
```

**Question:**
- **How many users were added to the Human Resources department in quarter 4?**
  - Answer: Two new users.

---

## Conclusion
You now have practical experience in using `grep` to:
- Search for specific information contained in files.
- Find files containing specific strings piped into `grep`.

These are fundamental tools in Linux for filtering information effectively.

---

## End Your Lab
1. Click **End Lab** and confirm submission.
2. Optionally, provide feedback about the lab.
3. Close the lab browser tab and refresh your course tab to mark the lab as complete.
