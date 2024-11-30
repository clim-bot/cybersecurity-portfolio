
# Exemplar: Install Software in a Linux Distribution

## Activity Overview
In this lab activity, you used the Advanced Package Tool (APT) and `sudo` to install and uninstall applications in a Linux Bash shell.

While installing Linux applications can be a complex task, the APT package manager simplifies this process, allowing quick and reliable management of applications in a Linux environment.

For this lab, you used **Suricata** and **tcpdump** as examples. These are network security applications used to capture and analyze network traffic.

The virtual machine in this lab runs a Debian-based distribution of Linux, which works with the APT package manager. Using a virtual machine prevents damage to a system in case tools are used improperly and provides the ability to revert to a previous state.

As a security analyst, knowing how to install and manage applications on a Linux OS is essential. This lab activity teaches you how to perform these tasks effectively!

This exemplar is a walkthrough of the previous Qwiklab activity, including detailed instructions and solutions. Use it if you were unable to complete the lab or need extra guidance. It can also help you prepare for the graded quiz in this module.

---

## Scenario
Your role as a security analyst requires you to install the **Suricata** and **tcpdump** network security applications on your system. 

In this scenario, you will:
1. Install, uninstall, and reinstall these applications on your Linux Bash shell.
2. Confirm the correct installation of these applications.

Here’s what you’ll do:
- Confirm APT is installed.
- Use APT to install Suricata and confirm installation.
- Uninstall Suricata and confirm removal.
- Install tcpdump and list installed applications.
- Reinstall Suricata and confirm both applications are installed.

> **Note:** The lab starts with your user account (`analyst`) already logged in to the Bash shell. You can start the tasks as soon as you click the **Start Lab** button.

---

## Task 1: Ensure that APT is Installed
1. Confirm that the APT package manager is installed by running the `apt` command:
   ```bash
   apt
   ```
   - Expected output:
     ```plaintext
     apt 1.8.2.3 (amd64)
     Usage: apt [options] command
     ...
     ```

APT is pre-installed in the Debian-based Linux environment used in this lab.

---

## Task 2: Install and Uninstall the Suricata Application
### 1. Install Suricata:
   ```bash
   sudo apt install suricata
   ```
   - When prompted, press `ENTER` to confirm installation.

### 2. Verify Installation:
   ```bash
   suricata
   ```
   - Expected output:
     ```plaintext
     Suricata 4.1.2
     USAGE: suricata [OPTIONS] [BPF FILTER]
     ...
     ```

### 3. Uninstall Suricata:
   ```bash
   sudo apt remove suricata
   ```
   - When prompted, press `ENTER` to confirm uninstallation.

### 4. Verify Uninstallation:
   ```bash
   suricata
   ```
   - Expected output:
     ```plaintext
     -bash: /usr/bin/suricata: No such file or directory
     ```

---

## Task 3: Install the tcpdump Application
1. Install tcpdump:
   ```bash
   sudo apt install tcpdump
   ```

---

## Task 4: List the Installed Applications
1. List all installed applications:
   ```bash
   apt list --installed
   ```
2. Verify tcpdump in the list:
   ```plaintext
   ...
   tcpdump/oldstable,now 4.9.3-1~deb10u2 amd64 [installed]
   ...
   ```

---

## Task 5: Reinstall the Suricata Application
### 1. Reinstall Suricata:
   ```bash
   sudo apt install suricata
   ```

### 2. Verify Installation:
   ```bash
   apt list --installed
   ```
   - Expected output:
     ```plaintext
     ...
     suricata/oldstable,now 1:4.1.2-2+deb10u1 amd64 [installed]
     tcpdump/oldstable,now 4.9.3-1~deb10u2 amd64 [installed]
     ...
     ```

---

## Conclusion
Great work! 🎉

You now have practical experience with the APT package manager. You learned to:
- Install applications.
- Uninstall applications.
- List installed applications.

Being able to manage installed applications in Linux is a key skill for any security analyst.
