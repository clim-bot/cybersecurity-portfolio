
# Create Hash Values: Lab Instructions

## Activity Overview
As a security analyst, you’ll need to implement security controls to protect organizations against a range of threats.

Hash functions produce a code that uniquely identifies a file’s contents, allowing you to detect modifications. This lab focuses on generating and comparing hash values for files using Linux commands.

---

## Scenario
You need to investigate whether two files are identical or different.

### Tasks:
1. Display the contents of two files and create hashes for each file.
2. Examine and compare the hashes.

---

## Task 1: Generate Hashes for Files
1. Use the `ls` command to list the contents of the directory:
   ```
   ls
   ```
   Output:
   ```
   file1.txt  file2.txt
   ```

2. Display the contents of each file:
   ```
   cat file1.txt
   cat file2.txt
   ```
   Output:
   ```
   X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*
   ```

3. Generate hashes for each file using `sha256sum`:
   ```
   sha256sum file1.txt
   sha256sum file2.txt
   ```
   Output:
   ```
   131f95c51cc819465fa1797f6ccacf9d494aaaff46fa3eac73ae63ffbdfd8267  file1.txt
   2558ba9a4cad1e69804ce03aa2a029526179a91a5e38cb723320e83af9ca017b  file2.txt
   ```

   **Conclusion:** The hash values differ, indicating the files are not identical.

---

## Task 2: Compare Hashes
1. Write the hashes to separate files:
   ```
   sha256sum file1.txt >> file1hash
   sha256sum file2.txt >> file2hash
   ```

2. Display the hash values in the new files:
   ```
   cat file1hash
   cat file2hash
   ```

3. Compare the two files byte by byte using `cmp`:
   ```
   cmp file1hash file2hash
   ```
   Output:
   ```
   file1hash file2hash differ: char1, line 1
   ```

   **Conclusion:** The hash values confirm the files are different.

---

## Conclusion
You practiced:
- Computing hashes using `sha256sum`
- Displaying hashes using `cat`
- Comparing hashes using `cmp`

These tools are vital for validating data integrity and ensuring organizational security.

---

## End Your Lab
1. Click **End Lab** and confirm.
2. Provide feedback if prompted.
3. Close the browser tab containing the lab and refresh the course page to mark the lab as complete.
