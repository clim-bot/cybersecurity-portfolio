
# PASTA Worksheet

| **Stages**                         | **Sneaker Company**                                                                                                           |
|-------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| **I. Define Business and Security Objectives** | - Seamlessly connect buyers and sellers through messaging and rating systems.<br>- Ensure secure, quick processing of transactions with multiple payment options.<br>- Prioritize data privacy to build user confidence. |
| **II. Define the Technical Scope**            | - **Technologies Used:**<br>API, PKI, AES, SHA-256, SQL<br><br>- **Priority:** SQL is prioritized because it stores critical user data and transactions. Poor SQL security can lead to database breaches through SQL injection attacks. |
| **III. Decompose Application**                | - Data flow involves user searches connecting to databases to retrieve sneaker listings.<br>- Ensure secure communication and data handling between users and backend services. |
| **IV. Threat Analysis**                       | - **Internal Threats:** Misuse of administrative privileges, human error.<br>- **External Threats:** SQL injection to compromise sensitive user data. |
| **V. Vulnerability Analysis**                 | - **Vulnerabilities:**<br>1. Lack of input validation or prepared statements in SQL queries.<br>2. Weak authentication mechanisms, leading to session hijacking. |
| **VI. Attack Modeling**                       | - **Attack Vectors:**<br>1. SQL injection exploiting unprepared statements.<br>2. Session hijacking due to weak login credentials. |
| **VII. Risk Analysis and Impact**             | - **Security Controls:**<br>1. Implement input validation and prepared statements.<br>2. Use multi-factor authentication (MFA).<br>3. Encrypt communications using TLS.<br>4. Conduct regular vulnerability scans to identify risks. |


---

## Resources
- [PASTA worksheet](supporting-materials/PASTA-worksheet.pdf)
- [PASTA attack tree](supporting-materials/PASTA-attack-tree.pdf)
- [PASTA dataflow](supporting-materials/PASTA-data-flow-diagram.pdf)