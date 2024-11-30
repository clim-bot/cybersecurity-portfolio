
# Manage Authorization

## Activity Overview
In this lab activity, you’ll use Linux commands to configure authorization. Authorization ensures that access to resources is controlled to prevent unauthorized access and modifications.

---

## Scenario
You must examine and manage the permissions on the files in the `/home/researcher2/projects` directory for the `researcher2` user. This user is part of the `research_team` group. You will:
1. Check permissions for files and directories.
2. Change incorrect permissions.
3. Strengthen security by modifying access permissions.

---

## Task 1: Check File and Directory Details

### Steps:
1. Navigate to the `projects` directory:
   ```bash
   cd projects
   ```
2. List the contents and permissions of the `projects` directory:
   ```bash
   ls -l
   ```

**Permissions Output Example:**
```
total 20
drwx--x--- 2 researcher2 research_team 4096 Oct 14 18:40 drafts
-rw-rw-rw- 1 researcher2 research_team   46 Oct 14 18:40 project_k.txt
-rw-r----- 1 researcher2 research_team   46 Oct 14 18:40 project_m.txt
-rw-rw-r-- 1 researcher2 research_team   46 Oct 14 18:40 project_r.txt
-rw-rw-r-- 1 researcher2 research_team   46 Oct 14 18:40 project_t.txt
```

**Question 1:** What is the name of the group that owns the files in the projects directory?  
- **Answer:** `research_team`

3. Check for hidden files:
   ```bash
   ls -la
   ```

**Question 2:** Which file is hidden in the projects directory?  
- **Answer:** `.project_x.txt`

---

## Task 2: Change File Permissions

### Steps:
1. Check for files that allow other users to write:
   ```bash
   ls -l
   ```

**Question 3:** Which file grants write permissions to other users?  
- **Answer:** `project_k.txt`

2. Remove write permissions for other users:
   ```bash
   chmod o-w project_k.txt
   ```

3. Check the permissions for `project_m.txt`:
   ```bash
   ls -l
   ```

**Question 4:** What are the group permissions on `project_m.txt`?  
- **Answer:** Read only.

4. Remove read and write permissions for the group:
   ```bash
   chmod g-r project_m.txt
   ```

---

## Task 3: Change File Permissions on a Hidden File

### Steps:
1. Check permissions for `.project_x.txt`:
   ```bash
   ls -la
   ```

**Question 5:** Which owner type has incorrect write permissions?  
- **Answer:** The user and the group.

2. Change permissions so the user and group can only read:
   ```bash
   chmod u-w,g-w,g+r .project_x.txt
   ```

---

## Task 4: Change Directory Permissions

### Steps:
1. Check permissions for the `drafts` directory:
   ```bash
   ls -l
   ```

**Question 6:** Does the group have permissions to access the `drafts` directory?  
- **Answer:** Yes.

2. Remove execute permissions for the group:
   ```bash
   chmod g-x drafts
   ```

---

## Conclusion
You now have practical experience with:
- Examining file and directory permissions.
- Changing permissions on files and directories.
- Enhancing security by managing authorization in Linux.

These skills are essential for managing access control and ensuring system security.

---

## End Your Lab
1. Click **End Lab** and confirm submission.
2. Optionally, provide feedback about the lab.
3. Close the lab browser tab and refresh your course tab to mark the lab as complete.
