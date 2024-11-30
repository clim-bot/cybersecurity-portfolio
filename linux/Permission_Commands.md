
# Permission Commands

## Overview
This document reviews file permissions in Linux and demonstrates how to use commands to display and change them. The focus is on putting the **principle of least privilege** into practice.

---

## Reading Permissions
In Linux, permissions are represented with a 10-character string and include:

- **Read (`r`)**:
  - For files: Ability to read the contents.
  - For directories: Ability to list contents.

- **Write (`w`)**:
  - For files: Ability to modify contents.
  - For directories: Ability to create new files.

- **Execute (`x`)**:
  - For files: Ability to execute programs.
  - For directories: Ability to enter and access files.

### Ownership Types:
1. **User**: The file owner.
2. **Group**: Group the owner is part of.
3. **Other**: All other users.

### 10-Character String Example:
| Character Position | Example     | Meaning                                                |
|---------------------|-------------|--------------------------------------------------------|
| 1st                | `d`         | Directory (`d`) or regular file (`-`)                 |
| 2nd-4th            | `rwx`       | User permissions (read, write, execute)              |
| 5th-7th            | `rwx`       | Group permissions (read, write, execute)             |
| 8th-10th           | `rwx`       | Other permissions (read, write, execute)             |

---

## Exploring Existing Permissions

Use the `ls` command with these options to check permissions:
- **`ls -a`**: Displays hidden files (starting with `.`).
- **`ls -l`**: Displays file permissions and other details.
- **`ls -la`**: Combines both options to show hidden files and permissions.

---

## Changing Permissions with `chmod`

The **principle of least privilege** ensures users have only the minimal permissions necessary.

### `chmod` Syntax:
```bash
chmod [owner]+/-/=permissions [file/directory]
```
- `+`: Adds permissions.
- `-`: Removes permissions.
- `=`: Assigns exact permissions.

### Permission Characters:
| Character | Description                                       |
|-----------|---------------------------------------------------|
| `u`       | User permissions                                 |
| `g`       | Group permissions                                |
| `o`       | Other permissions                                |
| `+`       | Adds permissions                                 |
| `-`       | Removes permissions                              |
| `=`       | Sets exact permissions                           |

### Examples:
1. Add all permissions for all owner types:
   ```bash
   chmod u+rwx,g+rwx,o+rwx login_sessions.txt
   ```
2. Remove all permissions:
   ```bash
   chmod u-rwx,g-rwx,o-rwx login_sessions.txt
   ```
3. Set read-only permissions:
   ```bash
   chmod u=r,g=r,o=r login_sessions.txt
   ```

---

## Example: Principle of Least Privilege in Action

### Scenario:
- File: `bonuses.txt` in the `compensation` directory.
- Initial Permissions: `-rw-rw----` (user and group can read/write).
- Requirement: Only the user `hrrep1` should have access.

### Steps:
1. Check permissions:
   ```bash
   ls -l bonuses.txt
   ```
2. Remove group permissions:
   ```bash
   chmod g-rw bonuses.txt
   ```

**Result:** The file now aligns with the principle of least privilege.

---

## Key Takeaways
1. Use `ls -l` and `ls -la` to investigate file and directory permissions.
2. Use `chmod` to adjust permissions and enforce security principles.
3. Following the principle of least privilege reduces security risks.
