## Activity Overview

In this activity, you will create a new portfolio document to demonstrate your experience using Linux commands to manage file permissions. You can add this document to your cybersecurity portfolio, which you can share with prospective employers or recruiters. To review the importance of building a professional portfolio and options for creating your portfolio, read 
Create a cybersecurity portfolio
.

To create your portfolio document, you will review a scenario and follow a series of steps. This scenario is connected to the lab you have just completed about how to examine and manage file permissions. You will explain the commands you used in that lab, and this will help you prepare for future job interviews and other steps in the hiring process.

Be sure to complete this activity and answer the questions that follow before moving on. The next course item will provide you with a completed exemplar to compare to your own work. 


## Scenario

Review the scenario below. Then, complete the step-by-step instructions.

You are a security professional at a large organization. You mainly work with their research team. Part of your job is to ensure users on this team are authorized with the appropriate permissions. This helps keep the system secure. 

Your task is to examine existing permissions on the file system. You’ll need to determine if the permissions match the authorization that should be given. If they do not match, you’ll need to modify the permissions to authorize the appropriate users and remove any unauthorized access.


Note: This scenario involves investigating and updating the same file permissions as the ones in the Manage authorization lab.  You can revisit the lab to get screenshots to include in your portfolio document. If you choose, it's also possible to complete this activity without revisiting the lab by typing your commands in the template.

## Step-By-Step Instructions

Follow the instructions to complete each step of the activity. Then, answer the 8 questions at the end of the activity before going to the next course item to compare your work to a completed exemplar.

### Step 1: Access the template
To use the template for this course item, click the following link and select Use Template. (In this step, you will just open the template. More instructions for how to use the template will be included in later steps.)

Link to template:
- [File permissions in Linux](supporting-materials/File-permissions-in-Linux.pdf)

---

### Step 2: Access supporting materials
The following supporting materials will help you complete this activity. Keep them open as you proceed to the next steps. 

To use the supporting materials for this course item, click the following links.

- The Instructions for including Linux commands document provides instructions and best practices for including samples of Linux commands in your portfolio activity.

    - Link to supporting material: [Instructions for including Linux commands](supporting-materials/Instructions-for-including-Linux-commands.pdf)

- The Current file permissions document demonstrates how the file structure is built for this portfolio activity. The file permissions for each file or directory are also provided.

    - Link to supporting material: [Current file permissions](supporting-materials/Current-file-permissions.pdf)

---

### Step 3: Check File and Directory Details

### Command
```bash
ls -la /home/researcher2/projects
```

### Output Example
```
drwxr-x---  2 researcher2 researcher2 4096 Nov 30 12:00 drafts
-rw-rw-rw-  1 researcher2 researcher2   50 Nov 30 12:00 project_k.txt
-rw-r-----  1 researcher2 researcher2   50 Nov 30 12:00 project_m.txt
-rw-rw-r--  1 researcher2 researcher2   50 Nov 30 12:00 project_r.txt
-rw-rw-r--  1 researcher2 researcher2   50 Nov 30 12:00 project_t.txt
-rw--w----  1 researcher2 researcher2   50 Nov 30 12:00 .project_x.txt
```

### Explanation
- `ls -la` lists files and directories in long format (`-l`), including hidden files (`-a`).
- Each line displays the permissions, owner, group, file size, and other metadata.

---

### Step 4: Describe the Permission String

### Example
Permissions for `project_k.txt`: `-rw-rw-rw-`.

### Explanation
- `-`: Indicates a file (not a directory).
- `rw-`: User has read and write permissions.
- `rw-`: Group has read and write permissions.
- `rw-`: Others have read and write permissions.

---

### Step 5: Change File Permissions

### Task
Remove write access for "others" from `project_k.txt`.

### Command
```bash
chmod o-w /home/researcher2/projects/project_k.txt
```

### Verification
```bash
ls -la /home/researcher2/projects/project_k.txt
```

### Updated Output
```
-rw-rw-r--  1 researcher2 researcher2   50 Nov 30 12:00 project_k.txt
```

### Explanation
- `chmod o-w` removes write permissions for "others".
- The new string is `-rw-rw-r--`.

---

### Step 6: Change File Permissions on a Hidden File

### Task
Modify `.project_x.txt` to allow only read access for "user" and "group".

### Command
```bash
chmod 440 /home/researcher2/projects/.project_x.txt
```

### Verification
```bash
ls -la /home/researcher2/projects/.project_x.txt
```

### Updated Output
```
-r--r-----  1 researcher2 researcher2   50 Nov 30 12:00 .project_x.txt
```

### Explanation
- `chmod 440` sets read permissions for "user" and "group", and no permissions for "others".
- The new string is `-r--r-----`.

---

### Step 7: Change Directory Permissions

### Task
Restrict `drafts` directory access to only `researcher2`.

### Command
```bash
chmod 700 /home/researcher2/projects/drafts
```

### Verification
```bash
ls -ld /home/researcher2/projects/drafts
```

### Updated Output
```
drwx------  2 researcher2 researcher2 4096 Nov 30 12:00 drafts
```

### Explanation
- `chmod 700` sets read, write, and execute permissions for the user only.
- The new string is `drwx------`.

---

### Step 8: Finalize Your Document

### Project Description
In this project, I used Linux commands to examine and manage file permissions in a secure directory structure. The tasks involved checking file details, interpreting permissions, and modifying permissions to align with organizational policies. This demonstrates my ability to manage file system security effectively.

### Summary
I reviewed and modified file and directory permissions to ensure compliance with security policies. This included removing unnecessary write access, securing hidden files, and restricting directory access to authorized users. These changes enhance the security of the file system and protect sensitive information.

---

### Step 9: Self-Assessment

| **Criteria**                                | **Completed?** |
|---------------------------------------------|----------------|
| Screenshots or typed commands               | Yes            |
| Description of the project                  | Yes            |
| Explanations of commands and outputs        | Yes            |
| Summary at the end                          | Yes            |
| Details on using `chmod`                    | Yes            |
| Details on checking permissions with `ls`   | Yes            |
| Explanation of the 10-character string      | Yes            |
| Details on hidden files and directories     | Yes            |

