
# Vulnerability Assessment Report
**Date:** 1st January 20XX  

---

## System Description
The server hardware consists of a powerful CPU processor and 128GB of memory. It runs on the latest version of the Linux operating system and hosts a MySQL database management system. It is configured with a stable network connection using IPv4 addresses and interacts with other servers on the network. Security measures include SSL/TLS encrypted connections.

---

## Scope
The scope of this vulnerability assessment relates to the current access controls of the system. The assessment will cover a period of three months, from June 20XX to August 20XX. **NIST SP 800-30 Rev. 1** is used to guide the risk analysis of the information system.

---

## Part 1 - Purpose
The database server is critical to the company’s operations as it stores sensitive business and customer data that employees access to identify potential customers and support remote work. Securing this server is essential to maintain confidentiality, integrity, and availability of the data, preventing unauthorized access and compliance violations. If the server were compromised or disabled, it could result in significant financial losses, operational downtime, and reputational damage. This vulnerability assessment aims to identify and mitigate risks to ensure the system remains secure and operational.

---

## Part 2 - Risk Assessment

| **Threat Source** | **Threat Event**                                      | **Likelihood (1-3)** | **Severity (1-3)** | **Risk (Likelihood × Severity)** |
|--------------------|------------------------------------------------------|-----------------------|--------------------|-----------------------------------|
| Hackers            | Install network sniffers to capture sensitive data. | 3                     | 3                  | 9                                 |
| Competitors        | Conduct denial-of-service (DoS) attacks.            | 2                     | 3                  | 6                                 |
| Insiders           | Alter or delete critical business information.      | 2                     | 2                  | 4                                 |

---

## Part 3 - Approach
The identified threats and events were selected based on their potential to significantly disrupt business operations and compromise sensitive data. Hackers pose an external risk with high likelihood and impact due to their technical expertise and motivations. Competitors may exploit vulnerabilities to gain a competitive advantage through targeted attacks like DoS. Insiders represent an internal risk that could lead to accidental or deliberate data breaches, especially in a remote work environment. These risks were prioritized for their potential to affect the server's confidentiality, integrity, and availability.

---

## Part 3 - Remediation Strategy
To mitigate the identified risks, the following security measures are recommended:
1. **Implement the Principle of Least Privilege**: Restrict access to critical data based on role requirements, ensuring users only access what is necessary for their tasks.
2. **Multi-Factor Authentication (MFA)**: Secure access to the server by requiring additional verification steps, such as one-time passwords.
3. **Regular Security Audits**: Proactively identify and address vulnerabilities through periodic assessments.
4. **Defense in Depth**: Deploy multiple layers of security, such as firewalls, intrusion detection systems, and encryption, to minimize attack surfaces.

These measures will enhance the server's security posture, reduce vulnerabilities, and ensure business continuity.

---
## Resources
-  [Vulnerability assessment report](supporting-materials/Vulnerability-assessment-report-template.pdf)
- [NIST SP 800-30 Rev. 1](supporting-materials/NIST-SP-800-30-Rev.-1.pdf)
