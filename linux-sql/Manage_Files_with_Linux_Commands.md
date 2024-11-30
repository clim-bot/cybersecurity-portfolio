
# Exemplar: Manage Files with Linux Commands

## Activity Overview
In this lab activity, you’ll use Linux commands to modify a directory structure and the files it contains. You’ll also use the nano text editor to add text to a file.

## Scenario
You need to ensure that the `/home/analyst` directory is properly organized by making a few changes and documenting the updates.

### Initial Directory Structure:
```
home
└── analyst
    ├── notes
    │   ├── Q3patches.txt
    │   └── tempnotes.txt
    ├── reports
    │   ├── Q1patches.txt
    │   └── Q2patches.txt
    └── temp
```

### Target Directory Structure:
```
home
└── analyst
    ├── logs
    ├── notes
    │   └── tasks.txt    
    └── reports
        ├── Q1patches.txt
        ├── Q2patches.txt
        └── Q3patches.txt
```

---

## Task 1: Create a New Directory

1. Create a new subdirectory called `logs`:
   ```bash
   mkdir logs
   ```
2. Confirm the directory creation:
   ```bash
   ls
   ```

**Expected Output:**
```
logs notes reports temp
```

---

## Task 2: Remove a Directory

1. Remove the `temp` directory:
   ```bash
   rmdir temp
   ```
2. Confirm the directory removal:
   ```bash
   ls
   ```

**Expected Output:**
```
logs notes reports
```

---

## Task 3: Move a File

1. Navigate to the `/home/analyst/notes` directory:
   ```bash
   cd /home/analyst/notes
   ```
2. Move the `Q3patches.txt` file to the `/home/analyst/reports` directory:
   ```bash
   mv Q3patches.txt /home/analyst/reports/
   ```
3. Confirm the file move:
   ```bash
   ls /home/analyst/reports
   ```

**Expected Output:**
```
Q1patches.txt Q2patches.txt Q3patches.txt
```

---

## Task 4: Remove a File

1. Remove the `tempnotes.txt` file:
   ```bash
   rm tempnotes.txt
   ```
2. Confirm the file removal:
   ```bash
   ls
   ```

**Expected Output:**
No files listed in the `notes` directory.

---

## Task 5: Create a New File

1. Create an empty file called `tasks.txt` in the `notes` directory:
   ```bash
   touch tasks.txt
   ```
2. Confirm the file creation:
   ```bash
   ls
   ```

**Expected Output:**
```
tasks.txt
```

---

## Task 6: Edit a File

1. Open the `tasks.txt` file with the nano text editor:
   ```bash
   nano tasks.txt
   ```
2. Add the following text to the file:
   ```
   Completed tasks
   1. Managed file structure in /home/analyst
   ```
3. Save the file using `CTRL+X`, confirm with `Y`, and press `ENTER`.
4. Clear the Bash shell window:
   ```bash
   clear
   ```
5. Display the contents of the `tasks.txt` file:
   ```bash
   cat tasks.txt
   ```

**Expected Output:**
```
Completed tasks
1. Managed file structure in /home/analyst
```

---

## Conclusion
You now have practical experience in using Linux Bash shell commands to:
- Create and remove directories
- Copy, move, and remove files
- Edit files with the nano text editor

These are essential skills for managing directories and files in a Linux environment!

---

## End Your Lab

1. Click **End Lab** and confirm submission.
2. Optionally, provide feedback about the lab.
3. Close the lab browser tab and refresh your course tab to mark the lab as complete.
