## Activity Overview

In this activity, you will take on the role of a cybersecurity analyst working for a company that hosts the cooking website, yummyrecipesforme.com. Visitors to the website experience a security issue when loading the main webpage. Your job is to investigate, identify, document, and recommend a solution to the security problem. 

When investigating the security event, you will review a tcpdump log. You will need to identify the network protocols used to establish the connection between the user and the website. Network protocols are the communication rules and standards networked devices use to transmit data. Unfortunately, malicious actors can also use network protocols to invade and attack private networks. Knowing how to identify the protocols commonly used in attacks will help you protect your organization’s network against these types of security events.

To complete the assignment, you will also need to document what occurred during the security incident. Then, you will recommend one security measure to implement to prevent similar security problems in the future.

Be sure to complete this activity before moving on. The next course item will provide you with a completed exemplar to compare to your own work. 

## Scenario

Review the scenario below. Then complete the step-by-step instructions.

You are a cybersecurity analyst for yummyrecipesforme.com, a website that sells recipes and cookbooks. A former employee has decided to lure users to a fake website with malware. 

The former employee/ hacker executed a brute force attack to gain access to the web host. They repeatedly entered several known default passwords for the administrative account until they correctly guessed the right one. After they obtained the login credentials, they were able to access the admin panel and change the website’s source code. They embedded a javascript function in the source code that prompted visitors to download and run a file upon visiting the website. After embedding the malware, the hacker changed the password to the administrative account. When customers download the file, they are redirected to a fake version of the website that contains the malware. 

Several hours after the attack, multiple customers emailed yummyrecipesforme’s helpdesk. They complained that the company’s website had prompted them to download a file to access free recipes. The customers claimed that, after running the file, the address of the website changed and their personal computers began running more slowly. 

In response to this incident, the website owner tries to log in to the admin panel but is unable to, so they reach out to the website hosting provider. You and other cybersecurity analysts are tasked with investigating this security event.

To address the incident, you create a sandbox environment to observe the suspicious website behavior. You run the network protocol analyzer tcpdump, then type in the URL for the website, yummyrecipesforme.com. As soon as the website loads, you are prompted to download an executable file to update your browser. You accept the download and allow the file to run. You then observe that your browser redirects you to a different URL, greatrecipesforme.com, which contains the malware.  

The logs show the following process:

1. The browser initiates a DNS request: It requests the IP address of the yummyrecipesforme.com URL from the DNS server.
2. The DNS replies with the correct IP address. 
3. The browser initiates an HTTP request: It requests the yummyrecipesforme.com webpage using the IP address sent by the DNS server.
4. The browser initiates the download of the malware.
5. The browser initiates a DNS request for greatrecipesforme.com.
6. The DNS server responds with the IP address for greatrecipesforme.com.
7. The browser initiates an HTTP request to the IP address for greatrecipesforme.com.

A senior analyst confirms that the website was compromised. The analyst checks the source code for the website. They notice that javascript code had been added to prompt website visitors to download an executable file. Analysis of the downloaded file found a script that redirects the visitors’ browsers from yummyrecipesforme.com to greatrecipesforme.com. 

The cybersecurity team reports that the web server was impacted by a brute force attack. The disgruntled hacker was able to guess the password easily because the admin password was still set to the default password. Additionally, there were no controls in place to prevent a brute force attack. 

Your job is to document the incident in detail, including identifying the network protocols used to establish the connection between the user and the website.  You should also recommend a security action to take to prevent brute force attacks in the future.

## Step-By-Step Instructions

Follow the instructions and answer the question below to complete the activity. Then, go to the next course item to compare your work to a completed exemplar.

### Step 1: Access the template
To use the template for this course item, click the link below and select Use Template. 

Link to template: 
- [Security incident report template](supporting-materials/Security-incident-report-template.pdf)

---

### Step 2: Access supporting materials
The following supporting materials will help you complete this activity. Keep them open as you proceed to the next steps. 

To use the supporting materials for this course item, click the link below and select Use Template. 

Links to supporting materials: 
- [tcpdump traffic log](supporting-materials/tcpdump-traffic-log.pdf)
- [How to read the tcpdump log](supporting-materials/How-to-read-the-tcpdump-traffic-log(1).pdf)

---

### Step 3: Identify the network protocol involved in the incident (Section 1)

The network protocols identified in the packet captures include **DNS (Domain Name System)** and **HTTP (Hypertext Transfer Protocol)**. DNS is responsible for translating the URL (e.g., `yummyrecipesforme.com`) into its corresponding IP address, allowing the browser to locate the website's server. HTTP is used for communication between the browser and the web server, including downloading the malicious file and redirecting to the fake website.

---

### Step 4: Document the incident (Section 2)
#### Incident Summary:
The website `yummyrecipesforme.com` was compromised by a brute force attack. The attacker guessed the default admin password to gain unauthorized access to the admin panel. Once inside, the attacker embedded malicious JavaScript in the website's source code, prompting visitors to download a harmful executable file that redirected their browsers to a fake website, `greatrecipesforme.com`, containing malware.

#### Timeline of Events:
1. **DNS Resolution (14:18:32):** A DNS request from `your.machine` resolved `yummyrecipesforme.com` to IP address `203.0.113.22`.
2. **HTTP Communication (14:18:36):** The browser established an HTTP connection to `yummyrecipesforme.com` and requested the main webpage, triggering the download of the malicious file.
3. **Second DNS Resolution (14:20:32):** The browser resolved the fake website `greatrecipesforme.com` to IP address `192.0.2.172`.
4. **HTTP Communication with Fake Website (14:25:29):** The browser connected to the fake website and completed the redirect.

#### Details of the Attack:
- The malicious JavaScript added to the source code triggered the download of a file claiming to "update the browser."
- The downloaded file contained a script that redirected users to `greatrecipesforme.com`, a phishing site with embedded malware.
- Multiple customers reported experiencing issues such as browser redirects and slower computer performance after interacting with the website.

#### Evidence:
- **tcpdump Logs:** The logs show DNS requests for `yummyrecipesforme.com` and `greatrecipesforme.com`, along with HTTP traffic to these domains.
- **Senior Analyst Confirmation:** The malicious JavaScript and harmful redirection were identified in the website's source code.
- **Customer Reports:** Emails from users described symptoms consistent with malware infections.

#### Root Cause:
The attack was made possible due to weak security practices:
1. The admin password was not changed from the default setting.
2. There were no mechanisms to prevent brute force attacks.

---
## Step 5: Recommend one remediation for brute force attacks (Section 3)

#### Recommendation: Implement **Two-Factor Authentication (2FA)** for all administrative accounts.

**Justification:**  
Two-Factor Authentication adds an extra layer of security by requiring users to verify their identity using a second factor (e.g., a code sent to a mobile device) in addition to their password. Even if an attacker guesses or obtains the password, they cannot access the account without the second factor. This measure significantly reduces the risk of unauthorized access, particularly in cases where weak or default passwords are used.


