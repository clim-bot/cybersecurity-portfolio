
# Exemplar: Add and Manage Users with Linux Commands

## Experiment Overview
This lab activity focuses on managing user access in Linux, including adding new users, modifying their groups, managing file permissions, and removing users. It emphasizes the practical use of Linux commands to ensure security in an organization.

---

## Activity Overview

In this lab, you'll use the following Linux commands:
- `useradd`: To add a new user.
- `usermod`: To modify user details, such as groups.
- `chown`: To change file ownership.
- `userdel`: To delete a user.
- `groupdel`: To delete an empty group.

### Important Note
Use `sudo` for all commands, as these tasks require root privileges.

---

## Scenario
A new employee with the username `researcher9` joins the organization. You'll:
1. Add them to the system and assign a primary group.
2. Make them the owner of a file.
3. Add them to a secondary group.
4. Delete the user when they leave the organization.

---

## Task 1: Add a New User

### Step 1: Add the User
Command:
```bash
sudo useradd researcher9
```

### Step 2: Add User to Primary Group
Command:
```bash
sudo usermod -g research_team researcher9
```

**Alternative Command**:
```bash
sudo useradd researcher9 -g research_team
```

---

## Task 2: Assign File Ownership

### Scenario
The new employee is responsible for `project_r.txt`, located in `/home/researcher2/projects`. Update the file ownership.

### Command
```bash
sudo chown researcher9 /home/researcher2/projects/project_r.txt
```

---

## Task 3: Add the User to a Secondary Group

### Scenario
The employee now works in both Research and Sales departments. Add them to the `sales_team` group as a secondary group.

### Command
```bash
sudo usermod -a -G sales_team researcher9
```

**Note**: Use lowercase `-a` and uppercase `-G` as options are case-sensitive.

---

## Task 4: Delete a User

### Step 1: Remove the User
Command:
```bash
sudo userdel researcher9
```

**Expected Output**:
```
Userdel: Group researcher9 not removed because it is not the primary group of user researcher9.
```

### Step 2: Remove Empty Group
Command:
```bash
sudo groupdel researcher9
```

---

## Conclusion

In this lab, you learned how to:
- Add a new user.
- Assign users to groups (primary and secondary).
- Change user permissions on files.
- Remove users and clean up groups.

### End Your Lab
1. Click **End Lab** and confirm.
2. Provide feedback if desired.
3. Refresh the course tab to mark the lab as complete.

---

## Commands Summary

| **Task**                        | **Command**                                         |
|----------------------------------|---------------------------------------------------|
| Add a user                      | `sudo useradd researcher9`                        |
| Add user to primary group       | `sudo usermod -g research_team researcher9`       |
| Assign file ownership           | `sudo chown researcher9 /home/researcher2/projects/project_r.txt` |
| Add user to secondary group     | `sudo usermod -a -G sales_team researcher9`       |
| Delete a user                   | `sudo userdel researcher9`                        |
| Delete an empty group           | `sudo groupdel researcher9`                      |
