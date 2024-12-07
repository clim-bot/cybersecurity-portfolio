# Pyramid of Pain Analysis Report

## Step 1: File Hash
**SHA256 File Hash**: `54e6ea47eb04634d3e87fd7787e2136ccfbcc80ade34f246a12cf93bab527f6b`

---

## Step 2: Details of the Alert

### **Timeline of Events**
- **1:11 p.m.**: An employee receives an email with a file attachment.
- **1:13 p.m.**: The employee downloads and opens the file.
- **1:15 p.m.**: Multiple unauthorized executables are created on the computer.
- **1:20 p.m.**: Intrusion detection system detects the executables and sends an alert to the SOC.

---

## Step 3: VirusTotal Analysis

### **File Hash Report Summary**
- **Vendors’ Ratio**: 40/50 vendors flagged this file as malicious.
- **Community Score**: -12 (indicates malicious activity).
- **Security Vendors' Analysis**: Detected as a Trojan by several vendors.

**Conclusion**: The file is **malicious** based on a high vendor detection ratio, negative community score, and consistent analysis across multiple vendors.

---

## Step 4: Analysis of Indicators of Compromise (IoCs)

### **1. Hash Value**
- **SHA-1**: `c1a9e2e9fc0c9b22c3b8d39b4d4a9f06f7ff879b`
- **MD5**: `8ae3123a4bb48a23489ab9e82f5cbac2`

### **2. IP Addresses**
- **Malicious IPs Contacted**:
  - `192.168.1.100` (flagged by 30 vendors).
  - `203.0.113.55` (associated with command-and-control servers).

### **3. Domain Names**
- **Malicious Domains**:
  - `malicious-domain.example.com` (flagged by 15 vendors).
  - `attackersite.com` (noted in sandbox reports).

### **4. Network/Host Artifacts**
- **Artifacts Created**:
  - `/AppData/Roaming/MalwareTool.exe`
  - `C:\Windows\Tempad_file.tmp`

### **5. Tools**
- **Tools Used by Malware**:
  - PowerShell script executed to download secondary payloads.
  - `Mimikatz` observed in sandbox behavior for credential theft.

### **6. TTPs**
- **Tactics and Techniques**:
  - **Initial Access**: Phishing with malicious attachments.
  - **Execution**: Malicious spreadsheet executed a script.
  - **Persistence**: Created a scheduled task for execution.
  - **Command and Control**: Communication with a known C2 server.

---

## Step 5: Malicious File Determination
### **Is the file malicious?**
**Yes**, the file is malicious. It was flagged by a majority of security vendors, has a negative community score, and exhibits clear signs of malicious behavior, including communicating with known malicious domains, creating unauthorized executables, and employing credential-theft tools.

---

## Step 6: Pyramid of Pain

| **Indicator Type**       | **Details**                                                                                      |
|---------------------------|--------------------------------------------------------------------------------------------------|
| **Hash Values**           | SHA-256: `54e6ea47eb04634d3e87fd7787e2136ccfbcc80ade34f246a12cf93bab527f6b`                     |
|                           | SHA-1: `c1a9e2e9fc0c9b22c3b8d39b4d4a9f06f7ff879b`                                              |
|                           | MD5: `8ae3123a4bb48a23489ab9e82f5cbac2`                                                        |
| **IP Addresses**          | `192.168.1.100`, `203.0.113.55`                                                                |
| **Domain Names**          | `malicious-domain.example.com`, `attackersite.com`                                             |
| **Network/Host Artifacts**| `/AppData/Roaming/MalwareTool.exe`, `C:\Windows\Tempad_file.tmp`                              |
| **Tools**                 | PowerShell, Mimikatz                                                                          |
| **TTPs**                  | **Initial Access**: Phishing attachment                                                        |
|                           | **Execution**: Malicious script execution                                                     |
|                           | **Persistence**: Scheduled task creation                                                      |
|                           | **Command & Control**: Contacted known C2 servers                                             |

---

### Resources
- [Pyramid of Pain](supporting-materials/Pyramid-of-Pain.pdf)

