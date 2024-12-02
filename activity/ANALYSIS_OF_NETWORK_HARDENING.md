## Activity Overview

In this activity, you will be presented with a scenario about a social media organization that recently experienced a major data breach caused by undetected vulnerabilities. To address the breach, you will identify some common network hardening tools that can be implemented to protect the organization’s overall security. Then, you will select a specific vulnerability that the company has and propose different network hardening methods. Finally, you will explain how the methods and tools you chose will be effective for managing the vulnerability and how they will prevent potential breaches in the future. 

In the course, you learned network hardening and network security-related hardening practices, such as port filtering, network access privileges, and encryption over networks. Network hardening practices help organizations monitor potential threats and attacks on their network and prevent some attacks from occurring. Some hardening practices are implemented every day, while others are executed every once in a while, such as every other week or once a month. Understanding how to use network hardening tools and methods will help you better monitor network activity and protect your organization’s network against various attacks.

Be sure to complete this activity before moving on. The next course item will provide you with a completed exemplar to compare to your own work. 

## Scenario

Review the following scenario. Then complete the step-by-step instructions.

You are a security analyst working for a social media organization. The organization recently experienced a major data breach, which compromised the safety of their customers’ personal information, such as names and addresses. Your organization wants to implement strong network hardening practices that can be performed consistently to prevent attacks and breaches in the future. 

After inspecting the organization’s network, you discover four major vulnerabilities. The four vulnerabilities are as follows:

The organization’s employees' share passwords.

The admin password for the database is set to the default.

The firewalls do not have rules in place to filter traffic coming in and out of the network.

Multifactor authentication (MFA) is not used. 

If no action is taken to address these vulnerabilities, the organization is at risk of experiencing another data breach or other attacks in the future. 

In this activity, you will write a security risk assessment to analyze the incident and explain what methods can be used to further secure the network.

## Step-By-Step Instructions

Follow the instructions and answer the following question to complete the activity. Then, go to the next course item to compare your work to a completed exemplar.

### Step 1: Access the template

To use the template for this course item, click the following link and select Use Template. 

Link to template: [Security risk assessment report](supporting-materials/Security-risk-assessment-report.pdf)

---

### Step 2: Access supporting materials

The following supporting materials will help you complete this activity. Keep them open as you proceed to the next steps. 

To use the supporting materials for this course item, click the following link and select Use Template. 

Link to supporting materials: [Network hardening tools](supporting-materials/Network-hardening-tools.xlsx)

---

### Step 3: Select up to three hardening tools and methods to implement (Part 1)

1. **Implement Multifactor Authentication (MFA):**  
   Adding MFA ensures that even if a password is compromised, an additional layer of security (such as a one-time code sent to a trusted device) prevents unauthorized access. This reduces the risk of brute force attacks and unauthorized logins.

2. **Enforce Strong Password Policies:**  
   Require employees to use strong, unique passwords and avoid password sharing. Implement regular password expiration policies and ensure the use of password managers to store and share credentials securely.

3. **Configure and Enforce Firewall Rules:**  
   Set up inbound and outbound traffic filtering to control data flow in the network. This minimizes the risk of malicious traffic entering the network and reduces exposure to external threats.

---

### Step 4: Explain your recommendations (Part 2)

**Recommendation 1: Implement Multifactor Authentication (MFA)**  
- **Effectiveness:** MFA adds a critical layer of protection by requiring two or more verification factors to gain access. Even if attackers guess or steal a password, they cannot access the system without the additional factor, such as a mobile app code or biometric verification. This technique directly addresses the vulnerability of shared or stolen passwords.  
- **Implementation Frequency:** MFA setup is a one-time configuration but should be reviewed annually to ensure compatibility with newer technologies or threats.

**Recommendation 2: Enforce Strong Password Policies**  
- **Effectiveness:** Weak or shared passwords are a significant vulnerability. By mandating strong, unique passwords and restricting password sharing, you reduce the likelihood of unauthorized access. Incorporating password managers helps enforce these policies without overburdening employees.  
- **Implementation Frequency:** Password policies should be enforced continuously, with mandatory password updates every 60-90 days and regular employee training on password security.