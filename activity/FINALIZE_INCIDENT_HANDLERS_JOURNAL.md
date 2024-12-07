# Incident Handler's Journal

---

## **Date:**  
2024-12-07  

## **Entry:**  
1  

## **Description:**  
Investigated a phishing incident using Chronicle. The investigation focused on identifying assets and events related to a suspicious domain (`signin.office365x24.com`) flagged in a phishing email. This activity provided insights into asset interactions and malicious domain behavior, contributing to the **Detection and Analysis** phase of the NIST Incident Response Lifecycle.

## **Tool(s) Used:**  
Chronicle  

## **The 5 W's:**  
- **Who:** Employees of the company, identified assets interacting with the domain.  
- **What:** Phishing email with a link to a malicious domain (`signin.office365x24.com`).  
- **When:** Incident occurred over several days; logs analyzed during the investigation showed multiple interactions.  
- **Where:** Domain `signin.office365x24.com` and related infrastructure (resolved IP `40.100.174.34`).  
- **Why:** Social engineering attack aimed at harvesting employee credentials.  

## **Additional Notes:**  
Identified related domains (`signin.accounts-gooqle.com` and `signin.office365x24.com`). POST requests to `/login.php` revealed possible data exfiltration.

---

## **Date:**  
2024-12-07  

## **Entry:**  
2  

## **Description:**  
Performed a query using Splunk to investigate failed SSH login attempts for the root account on a mail server (`mailsv`). This activity was part of the **Detection and Analysis** phase, focusing on narrowing down potential intrusion vectors through log data analysis.  

## **Tool(s) Used:**  
Splunk  

## **The 5 W's:**  
- **Who:** Malicious actor(s) attempting unauthorized SSH access.  
- **What:** Repeated failed SSH login attempts for the root account.  
- **When:** Log entries revealed a pattern over the last 24 hours.  
- **Where:** Buttercup Games' mail server (`mailsv`).  
- **Why:** Attempted privilege escalation for further system compromise.  

## **Additional Notes:**  
Used Splunk Search Processing Language (SPL) to filter logs: `index=main host=mailsv fail* root`. Detected over 100 failed attempts targeting the root account.

---

## **Date:**  
2024-12-07  

## **Entry:**  
3  

## **Description:**  
Explored Suricata logs to identify potential security threats in a network. Reviewed and created custom rules to trigger alerts on HTTP traffic leaving the home network. This task was part of the **Preparation** phase, focusing on enhancing detection capabilities.

## **Tool(s) Used:**  
Suricata  

## **The 5 W's:**  
- **Who:** HTTP traffic leaving the local network (`$HOME_NET`).  
- **What:** Alert triggered by the rule: `alert http $HOME_NET any -> $EXTERNAL_NET any (msg:"GET on wire"; ...)`.  
- **When:** Analyzed logs after running Suricata against a `sample.pcap` file.  
- **Where:** Network perimeter monitored by Suricata.  
- **Why:** Test rule functionality to detect suspicious HTTP methods.  

## **Additional Notes:**  
Logs reviewed: `fast.log` for quick alerts and `eve.json` for detailed event analysis.

---

## **Date:**  
2024-12-07  

## **Entry:**  
4  

## **Description:**  
Used Splunk to monitor network activity logs and identify trends in failed authentication attempts across Buttercup Games’ infrastructure. Focused on patterns of potential brute-force attacks.  

## **Tool(s) Used:**  
Splunk  

## **The 5 W's:**  
- **Who:** Unknown actors attempting to access multiple network devices.  
- **What:** Repeated authentication failures across various systems.  
- **When:** Over the past week, with spikes during off-business hours.  
- **Where:** Network logs stored in the Splunk `main` index.  
- **Why:** Likely reconnaissance or brute-force attack attempts.  

## **Additional Notes:**  
Filtered events by source IPs and time range to identify anomalous behavior.

---

## **Reflections/Notes**

### **Reflection Questions:**

1. **Were there any specific activities that were challenging for you? Why or why not?**  
   The Chronicle activity was challenging because correlating assets and events across different tabs required careful attention to detail. The volume of log data also made analysis more complex.

2. **Has your understanding of incident detection and response changed since taking this course?**  
   Yes, my understanding has deepened significantly. I now appreciate the importance of systematic documentation, clear investigation steps, and leveraging SIEM tools effectively.

3. **Was there a specific tool or concept that you enjoyed the most? Why?**  
   I enjoyed working with Splunk the most due to its robust search capabilities and clear interface, which made log analysis intuitive and efficient.

---
