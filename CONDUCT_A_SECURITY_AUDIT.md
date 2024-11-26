# Create a Security Audit

## Scenario
Review the following scenario. Then complete the step-by-step instructions.

This scenario is based on a fictional company:

Botium Toys is a small U.S. business that develops and sells toys. The business has a single physical location, which serves as their main office, a storefront, and warehouse for their products. However, Botium Toy’s online presence has grown, attracting customers in the U.S. and abroad. As a result, their information technology (IT) department is under increasing pressure to support their online market worldwide. 

The manager of the IT department has decided that an internal IT audit needs to be conducted. She's worried about maintaining compliance and business operations as the company grows without a clear plan. She believes an internal audit can help better secure the company’s infrastructure and help them identify and mitigate potential risks, threats, or vulnerabilities to critical assets. The manager is also interested in ensuring that they comply with regulations related to internally processing and accepting online payments and conducting business in the European Union (E.U.).   

The IT manager starts by implementing the National Institute of Standards and Technology Cybersecurity Framework (NIST CSF), establishing an audit scope and goals, listing assets currently managed by the IT department, and completing a risk assessment. The goal of the audit is to provide an overview of the risks and/or fines that the company might experience due to the current state of their security posture.

Your task is to review the IT manager’s scope, goals, and risk assessment report. Then, perform an internal audit by completing a controls and compliance checklist. 

## Step-By-Step Instructions
Follow the instructions to complete each step of the activity. Then, answer the 5 questions at the end of the activity before going to the next course item to compare your work to the completed exemplar.

### Step 1: Access supporting materials
The following supporting materials will help you complete this activity. Keep materials open as you proceed to the next steps.

To use the supporting materials for this course utem, click the links.

Links to supporting materials:

- [Botium Toys: Scope, goals, and risk assessment report](supporting-materials/Botium-Toys-Scope-goals-and-risk-assessment-report.pdf)
- [Control categories](supporting-materials/Control-categories.pdf)
- [Controls and compliance checklist](supporting-materials/Controls-and-compliance-checklist.pdf)

### Step 2: Conduct the audit: Controls and compliance checklist
## Controls Assessment Checklist

| **Control**                                      | **Yes** | **No** |
|--------------------------------------------------|---------|---------|
| Least Privilege                                  |         |   ✔     |
| Disaster Recovery Plans                          |         |   ✔     |
| Password Policies                                |         |   ✔     |
| Separation of Duties                             |         |   ✔     |
| Firewall                                         |   ✔     |         |
| Intrusion Detection System (IDS)                |         |   ✔     |
| Backups                                          |         |   ✔     |
| Antivirus Software                               |   ✔     |         |
| Manual Monitoring, Maintenance, and Intervention for Legacy Systems |   ✔     |         |
| Encryption                                       |         |   ✔     |
| Password Management System                       |         |   ✔     |
| Locks (offices, storefront, warehouse)           |   ✔     |         |
| Closed-Circuit Television (CCTV) Surveillance   |   ✔     |         |
| Fire Detection/Prevention (fire alarm, sprinkler system, etc.) |   ✔     |         |

---

## Compliance Checklist

### Payment Card Industry Data Security Standard (PCI DSS)

| **Best Practice**                                                     | **Yes** | **No** |
|------------------------------------------------------------------------|---------|---------|
| Only authorized users have access to customers’ credit card information. |         |   ✔     |
| Credit card information is stored, accepted, processed, and transmitted internally, in a secure environment. |         |   ✔     |
| Implement data encryption procedures to better secure credit card transaction touchpoints and data. |         |   ✔     |
| Adopt secure password management policies.                            |         |   ✔     |

---

### General Data Protection Regulation (GDPR)

| **Best Practice**                                                     | **Yes** | **No** |
|------------------------------------------------------------------------|---------|---------|
| E.U. customers’ data is kept private/secured.                         |   ✔     |         |
| There is a plan in place to notify E.U. customers within 72 hours if their data is compromised/there is a breach. |   ✔     |         |
| Ensure data is properly classified and inventoried.                   |         |   ✔     |
| Enforce privacy policies, procedures, and processes to properly document and maintain data. |   ✔     |         |

---

### System and Organizations Controls (SOC 1, SOC 2)

| **Best Practice**                                                     | **Yes** | **No** |
|------------------------------------------------------------------------|---------|---------|
| User access policies are established.                                 |         |   ✔     |
| Sensitive data (PII/SPII) is confidential/private.                    |         |   ✔     |
| Data integrity ensures the data is consistent, complete, accurate, and has been validated. |   ✔     |         |
| Data is available to individuals authorized to access it.             |   ✔     |         |

---

## Recommendations

To address the high risks identified, Botium Toys should consider implementing the following **controls and compliance improvements**:

1. **Least Privilege**: Restrict data access to only those employees whose roles require it. Implement role-based access controls to enforce this policy.
   
2. **Disaster Recovery Plans**: Establish and regularly test disaster recovery plans to ensure business continuity in case of data loss or system failure.
   
3. **Password Management**: Implement a centralized password management system with stricter password policies that include complexity requirements (special characters, numbers, etc.).

4. **Intrusion Detection System (IDS)**: Deploy an IDS to monitor and detect suspicious activity in real time, reducing the risk of undetected breaches.

5. **Data Encryption**: Encrypt sensitive customer information, such as credit card data, to meet PCI DSS requirements and safeguard customer privacy.

6. **Backups**: Regularly create and test data backups to ensure data can be restored in the event of a cyberattack or technical failure.

7. **Compliance Gaps**:
   - Adhere to PCI DSS by securing customer payment data and limiting access to authorized personnel.
   - Classify and inventory data to improve adherence to GDPR requirements.

### Step 3: Assess your activity
1. **You reviewed the scope, goals, and risk assessment report.**  
   **Answer:** Yes  

2. **You considered risks to Botium Toys’ customers, employees, and/or assets, based on controls and compliance best practices that are or are not currently implemented.**  
   **Answer:** Yes  

3. **You reviewed the control categories document.**  
   **Answer:** Yes  

4. **You selected “yes” or “no” for each control listed.**  
   **Answer:** Yes  

5. **You selected “yes” or “no” for each compliance best practice.**  
   **Answer:** Yes  
