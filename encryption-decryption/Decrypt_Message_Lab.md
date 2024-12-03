
# Decrypt an Encrypted Message: Lab Instructions

## Activity Overview
Previously, you learned about cryptography and how encryption and decryption can be used to secure information online. You were also introduced to the Caesar cipher, one of the earliest cryptographic algorithms used to protect people’s privacy.

As a security analyst, it’s important that you understand the role of encryption to secure data online and that you’re familiar with the right security controls to do so.

In this lab activity, you’ll be guided through some basic cryptographic activities using Linux commands to decrypt files and reveal hidden messages.

---

## Scenario
In this scenario, all of the files in your home directory have been encrypted. You’ll need to use Linux commands to break the Caesar cipher and decrypt the files so that you can read the hidden messages they contain.

Here’s how you’ll do this task:
1. Explore the contents of the home directory and read the contents of a file.
2. Find a hidden file and decrypt the Caesar cipher it contains.
3. Decrypt the encrypted data file to recover your data and reveal the hidden message.

**Note:** The lab starts with you logged in as user `analyst`, with your home directory, `/home/analyst`, as the current working directory.

---

## Task 1: Read the Contents of a File
1. Use the `ls` command to list the files in the current working directory:
   ```
   ls /home/analyst
   ```
   Output:
   ```
   Q1.encrypted  README.txt  caesar
   ```

2. Use the `cat` command to read the contents of the `README.txt` file:
   ```
   cat README.txt
   ```
   Output:
   ```
   Hello,
   All of your data has been encrypted. To recover your data, you will need to solve a cipher. To get started look for a hidden file in the caesar subdirectory.
   ```

---

## Task 2: Find a Hidden File
1. Change to the `caesar` subdirectory:
   ```
   cd caesar
   ```

2. Use the `ls -a` command to list all files, including hidden files:
   ```
   ls -a
   ```
   Output:
   ```
   .  ..  .leftShift3
   ```

3. Use the `cat` command to list the contents of the `.leftShift3` file:
   ```
   cat .leftShift3
   ```

4. Decrypt the Caesar cipher in the `.leftShift3` file:
   ```
   cat .leftShift3 | tr "d-za-cD-ZA-C" "a-zA-Z"
   ```
   Output:
   ```
   In order to recover your files you will need to enter the following command:
   openssl aes-256-cbc -pbkdf2 -a -d -in Q1.encrypted -out Q1.recovered -k ettubrute
   ```

5. Return to the home directory:
   ```
   cd ~
   ```

---

## Task 3: Decrypt a File
1. Use the command revealed in `.leftShift3` to decrypt the file:
   ```
   openssl aes-256-cbc -pbkdf2 -a -d -in Q1.encrypted -out Q1.recovered -k ettubrute
   ```

2. List the contents of the current working directory:
   ```
   ls
   ```
   Output:
   ```
   Q1.encrypted  Q1.recovered  README.txt  caesar
   ```

3. Use the `cat` command to read the contents of the `Q1.recovered` file:
   ```
   cat Q1.recovered
   ```
   Output:
   ```
   If you are able to read this, then you have successfully decrypted the classic cipher text. You recovered the encryption key that was used to encrypt this file. Great work!
   ```

---

## Conclusion
Great work! You now have practical experience in using basic Linux Bash shell commands to:
- List hidden files
- Decrypt a Caesar cipher
- Decrypt an encrypted file

This is an important milestone on your journey towards understanding encryption and decryption.

---

## End Your Lab
1. Click **End Lab**. A pop-up box will appear. Click **Submit** to confirm that you're done.
2. Provide feedback if prompted.
3. Close the browser tab containing the lab and refresh the course page to mark the lab as complete.
