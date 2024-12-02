## Activity Overview

In this activity, you will create an incident report using the knowledge you’ve gained about networks throughout this course to analyze a network incident. You will analyze the situation using the National Institute of Standards and Technology's Cybersecurity Framework (NIST CSF). The CSF is a voluntary framework that consists of standards, guidelines, and best practices to manage cybersecurity risk. Creating a quality cybersecurity incident report and applying the CSF can demonstrate a proactive approach to security, improving communication and transparency with stakeholders, and improve security practices within your organization. You can also add the incident report you create to your cybersecurity portfolio when  you complete it.

The CSF is scalable and can be applied in a wide variety of contexts. As you continue to learn more and refine your understanding of key cybersecurity skills, you can use the templates provided in this activity in other situations. Knowing how to identify which security measures to apply in response to business needs will help you determine which are the best available options when it comes to network security.

Be sure to complete this activity before moving on. In the next course item, you will be able to self-assess your response. After that, there will be a completed exemplar to compare to your own work. It will also provide an opportunity for you to answer rubric questions that allow you to reflect on key elements of your professional statement.

## Scenario

Review the scenario below. Then complete the step-by-step instructions.

You are a cybersecurity analyst working for a multimedia company that offers web design services, graphic design, and social media marketing solutions to small businesses. Your organization recently experienced a DDoS attack, which compromised the internal network for two hours until it was resolved.

During the attack, your organization’s network services suddenly stopped responding due to an incoming flood of ICMP packets. Normal internal network traffic could not access any network resources. The incident management team responded by blocking incoming ICMP packets, stopping all non-critical network services offline, and restoring critical network services. 

The company’s cybersecurity team then investigated the security event. They found that a malicious actor had sent a flood of ICMP pings into the company’s network through an unconfigured firewall. This vulnerability allowed the malicious attacker to overwhelm the company’s network through a distributed denial of service (DDoS) attack. 

To address this security event, the network security team implemented: 

- A new firewall rule to limit the rate of incoming ICMP packets

- Source IP address verification on the firewall to check for spoofed IP addresses on incoming ICMP packets

- Network monitoring software to detect abnormal traffic patterns

- An IDS/IPS system to filter out some ICMP traffic based on suspicious characteristics

As a cybersecurity analyst, you are tasked with using this security event to create a plan to improve your company’s network security, following the National Institute of Standards and Technology (NIST) Cybersecurity Framework (CSF). You will use the CSF to help you navigate through the different steps of analyzing this cybersecurity event and integrate your analysis into a general security strategy. We have broken the analysis into different parts in the template below. You can explore them here:

- **Identify** security risks through regular audits of internal networks, systems, devices, and access privileges to identify potential gaps in security. 

- **Protect** internal assets through the implementation of policies, procedures, training and tools that help mitigate cybersecurity threats. 

- **Detect** potential security incidents and improve monitoring capabilities to increase the speed and efficiency of detections. 

- **Respond** to contain, neutralize, and analyze security incidents; implement improvements to the security process. 

**Recover** affected systems to normal operation and restore systems data and/or assets that have been affected by an incident. 

## Step-By-Step Instructions

Follow the instructions and fill in the sections to complete the activity. Then, go to the next course item to compare your work to a completed exemplar.

### Step 1: Access the incident report analysis template
To access template for this course item, click the following link and select Use Template. 

Link to template:
- [Incident report analysis](supporting-materials/Incident-report-analysis.pdf)

Link to supporting materials:
- [Applying the NIST CSF](supporting-materials/Applying-the-NIST-CSF-.pdf)
- [Example of an incident report analysis](supporting-materials/Completed-Example-of-an-Incident-report-analysis.pdf)

---

## Step 2: Summarize the Security Event
**Summary:**  
A Distributed Denial of Service (DDoS) attack targeted the company’s network, flooding it with ICMP packets. This resulted in the network being unresponsive for two hours. The attack exploited a misconfigured firewall, which allowed the malicious actor to overwhelm the network. Critical network services were disrupted, impacting internal operations. The response included blocking incoming ICMP packets, taking non-critical services offline, and restoring critical services.

---

## Step 3: Identify the Type of Attack and Systems Affected
**Identify:**  
- **Type of Attack:** Distributed Denial of Service (DDoS) attack using an ICMP flood.  
- **Systems Affected:**  
  - Firewall: Misconfigured, enabling unauthorized ICMP packets.  
  - Network resources: Became unresponsive due to the flood.  
  - Internal systems: Disrupted, affecting normal operations.  

---

## Step 4: Protect the Assets in Your Organization from Being Compromised
**Protect:**  
- **Immediate Actions:**  
  - Reconfigure the firewall to limit the rate of incoming ICMP packets.  
  - Implement source IP verification to block spoofed IP addresses.  
  - Deploy Intrusion Prevention Systems (IPS) to detect and block malicious traffic.  
  - Conduct staff training on recognizing and responding to DDoS attacks.  
- **Long-term Improvements:**  
  - Establish regular security audits for all network devices and firewalls.  
  - Update and enforce security policies related to firewall configurations.  

---

## Step 5: Detect Similar Incidents in the Future
**Detect:**  
- **Detection Methods:**  
  - Install network monitoring software to analyze traffic patterns and detect anomalies.  
  - Utilize an Intrusion Detection System (IDS) to identify unauthorized ICMP traffic.  
  - Implement Security Information and Event Management (SIEM) tools to provide real-time alerts for unusual activity.  
  - Schedule periodic reviews of firewall logs to ensure proper functionality.  

---

## Step 6: Respond to Future Cybersecurity Incidents
**Respond:**  
- **Response Plan:**  
  - **Contain:** Immediately block malicious traffic by isolating affected systems or ports.  
  - **Neutralize:** Update firewall rules and deploy countermeasures like blacklisting IPs or geofencing.  
  - **Communicate:** Inform IT staff, upper management, and affected stakeholders about the incident and steps being taken.  
  - **Analyze:** Investigate logs to trace the attack’s origin and identify vulnerabilities.  
  - **Improve:** Update incident response playbooks based on lessons learned.  

---

## Step 7: Recover from the Incident
**Recover:**  
- **Recovery Steps:**  
  - Restore affected systems to full functionality by reconfiguring firewalls and restarting network services.  
  - Verify that no data or systems were corrupted or lost during the attack.  
  - Document the incident thoroughly for future reference.  
  - Perform a post-incident review to identify gaps in the response process.  
- **Processes in Place:**  
  - Regular backups of system configurations and network settings.  
  - A clear disaster recovery plan, including restoring critical services first.  

---

## Step 8: Assess Your Activity
**Self-Assessment Checklist:**  
1. **Summary of the incident:** Yes  
2. **Identification of the type of attack and impacted systems:** Yes  
3. **Plan to protect the network from future incidents:** Yes  
4. **Methods for detecting future incidents:** Yes  
5. **Response plan for similar cybersecurity incidents:** Yes  
6. **Procedures to recover from similar security events:** Yes  