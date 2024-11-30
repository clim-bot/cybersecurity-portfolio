
# Security Incident Report

## Section 1: Identify the network protocol involved in the incident
The network protocols identified in the packet captures include **DNS (Domain Name System)** and **HTTP (Hypertext Transfer Protocol)**. DNS is responsible for translating the URL (e.g., `yummyrecipesforme.com`) into its corresponding IP address, allowing the browser to locate the website's server. HTTP is used for communication between the browser and the web server, including downloading the malicious file and redirecting to the fake website.

## Section 2: Document the incident
### Incident Summary:
The website `yummyrecipesforme.com` was compromised by a brute force attack. The attacker guessed the default admin password to gain unauthorized access to the admin panel. Once inside, the attacker embedded malicious JavaScript in the website's source code, prompting visitors to download a harmful executable file that redirected their browsers to a fake website, `greatrecipesforme.com`, containing malware.

### Timeline of Events:
1. **DNS Resolution (14:18:32):** A DNS request from `your.machine` resolved `yummyrecipesforme.com` to IP address `203.0.113.22`.
2. **HTTP Communication (14:18:36):** The browser established an HTTP connection to `yummyrecipesforme.com` and requested the main webpage, triggering the download of the malicious file.
3. **Second DNS Resolution (14:20:32):** The browser resolved the fake website `greatrecipesforme.com` to IP address `192.0.2.172`.
4. **HTTP Communication with Fake Website (14:25:29):** The browser connected to the fake website and completed the redirect.

### Details of the Attack:
- The malicious JavaScript added to the source code triggered the download of a file claiming to "update the browser."
- The downloaded file contained a script that redirected users to `greatrecipesforme.com`, a phishing site with embedded malware.
- Multiple customers reported experiencing issues such as browser redirects and slower computer performance after interacting with the website.

### Evidence:
- **tcpdump Logs:** The logs show DNS requests for `yummyrecipesforme.com` and `greatrecipesforme.com`, along with HTTP traffic to these domains.
- **Senior Analyst Confirmation:** The malicious JavaScript and harmful redirection were identified in the website's source code.
- **Customer Reports:** Emails from users described symptoms consistent with malware infections.

### Root Cause:
The attack was made possible due to weak security practices:
1. The admin password was not changed from the default setting.
2. There were no mechanisms to prevent brute force attacks.

## Section 3: Recommend one remediation for brute force attacks
### Recommendation: Implement **Two-Factor Authentication (2FA)** for all administrative accounts.

**Justification:**  
Two-Factor Authentication adds an extra layer of security by requiring users to verify their identity using a second factor (e.g., a code sent to a mobile device) in addition to their password. Even if an attacker guesses or obtains the password, they cannot access the account without the second factor. This measure significantly reduces the risk of unauthorized access, particularly in cases where weak or default passwords are used.
