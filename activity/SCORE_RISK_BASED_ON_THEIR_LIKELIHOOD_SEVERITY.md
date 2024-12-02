## Activity Overview

In this activity, you will practice performing a risk assessment by evaluating vulnerabilities that commonly threaten business operations. Then, you will decide how to prioritize your resources based on the risk scores you assign each vulnerability.

You might recall that the purpose of having a security plan is to be prepared for risks. Assessing potential risks is one of the first steps of the NIST Cybersecurity Framework (CSF), a voluntary framework that consists of standards, guidelines, and best practices to manage cybersecurity risk. Risk assessments are how security teams determine whether their security operations are adequately positioned to prevent cyber attacks and protect sensitive information.

Be sure to complete this activity before moving on. The next course item will provide you with a completed exemplar to compare to your own work.

## Scenario

Review the following scenario. Then complete the step-by-step instructions.

You've joined a new cybersecurity team at a commercial bank. The team is conducting a risk assessment of the bank's current operational environment. As part of the assessment, they are creating a risk register to help them focus on securing the most vulnerable risks.

A risk register is a central record of potential risks to an organization's assets, information systems, and data. Security teams commonly use risk registers when conducting a risk assessment.

Your supervisor asks you to evaluate a set of risks that the cybersecurity team has recorded in the risk register. For each risk, you will first determine how likely that risk is to occur. Then, you will determine how severely that risk may impact the bank. Finally, you will calculate a score for the severity of that risk. You will then compare scores across all risks so your team can determine how to prioritize their attention for each risk.

## Step-By-Step Instructions

Follow the instructions and answer the question below to complete the activity. Then, go to the next course item to compare your work to a completed exemplar.

### Step 1: Access the template
To use the template for this course item, click the following link and select Use Template. 

Link to template: [Risk register](supporting-materials/Risk-register.pdf)

---

### Step 2: Understand the Operating Environment
The bank's operating environment includes characteristics that influence its risk profile:
- **Coastal location**: Potential exposure to natural disasters like hurricanes could impact operations.
- **Low crime rates**: Suggests physical theft is less likely but still a possibility.
- **100 on-premise and 20 remote employees**: Increases exposure to insider threats and remote work vulnerabilities.
- **Customer base**: 2,000 individual and 200 commercial accounts are lucrative targets for cybercriminals.
- **Marketing partnerships**: Partnerships with a professional sports team and local businesses could introduce third-party risks.
- **Strict financial regulations**: Non-compliance with data protection laws could result in severe penalties.

---

### Step 3: Consider Potential Risks
### Notes Section:
Security events are possible due to human errors, natural disasters, or malicious activities. Business email compromise could exploit the large employee base, while a compromised database may result from poor encryption practices. Financial records leaks and theft are physical and technical risks exacerbated by operational complexity. Coastal location increases supply chain vulnerabilities due to natural disasters.

---

### Step 4: Score Risk Based on Likelihood
Likelihood scores (1-3) are assigned based on the potential frequency of each risk occurring:

1. **Business email compromise**: Likelihood = 3 (High)
   - Employees may be tricked into sharing sensitive information due to phishing attacks, which are common in banking.
   
2. **Compromised user database**: Likelihood = 2 (Moderate)
   - Poor encryption increases risk but requires additional exploits.

3. **Financial records leak**: Likelihood = 2 (Moderate)
   - Publicly accessible servers are a moderate risk but avoidable with proper configuration.

4. **Theft**: Likelihood = 1 (Low)
   - Low crime rates reduce the likelihood of physical theft.

5. **Supply chain disruption**: Likelihood = 1 (Low)
   - Natural disasters in a coastal area occur infrequently.

---

### Step 5: Score Risk Based on Severity
Severity scores (1-3) are assigned based on the potential impact of each risk:

1. **Business email compromise**: Severity = 3 (High)
   - Severe financial and reputational impact due to fraud or data breaches.

2. **Compromised user database**: Severity = 3 (High)
   - Regulatory penalties and loss of customer trust due to data exposure.

3. **Financial records leak**: Severity = 3 (High)
   - Loss of profits, customer trust, and compliance violations.

4. **Theft**: Severity = 2 (Moderate)
   - Potential financial loss but limited by bank insurance and safeguards.

5. **Supply chain disruption**: Severity = 2 (Moderate)
   - Operational delays and limited ability to meet Federal Reserve requirements.

---

### Step 6: Calculate Overall Risk Score and Prioritize
Using the formula **Likelihood x Severity = Risk**, calculate the overall risk score and assign priority:

| Asset  | Risk                        | Likelihood | Severity | Overall Risk Score | Priority |
|--------|-----------------------------|------------|----------|--------------------|----------|
| Funds  | Business email compromise   | 3          | 3        | 9                  | 1        |
| Funds  | Compromised user database   | 2          | 3        | 6                  | 2        |
| Funds  | Financial records leak      | 2          | 3        | 6                  | 3        |
| Funds  | Theft                       | 1          | 2        | 2                  | 4        |
| Funds  | Supply chain disruption     | 1          | 2        | 2                  | 5        |

---

## Summary
The highest-priority risk is business email compromise due to its high likelihood and severe impact. Risks like compromised databases and financial records leaks are moderately likely but highly severe, requiring attention. Physical theft and supply chain disruptions have a lower likelihood and impact, making them lower priorities.