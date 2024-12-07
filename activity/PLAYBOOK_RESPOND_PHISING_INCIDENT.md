# Alert Ticket

| **Ticket ID** | **Alert Message**                  | **Severity** | **Details**                                                                                     | **Ticket Status** |
|---------------|------------------------------------|--------------|-------------------------------------------------------------------------------------------------|-------------------|
| A-2703        | SERVER-MAIL Phishing attempt possible download of malware | Medium       | The user may have opened a malicious email and opened attachments or clicked links.             | Escalated         |

---

## **Ticket Comments**

**Brief Description**:  
The alert involves a phishing email sent to the HR department. The email includes a password-protected malicious attachment with a known file hash already confirmed to be malicious. The attachment's filename is `bfsvc.exe`.

---

**Reasons for Escalation**:
1. **Alert Severity**: The alert is marked as **Medium**, suggesting potential escalation per the organization's policy.
2. **Malicious Indicators**:
   - **Sender Details**: The sender's email address (`76tguyhh6tgftrt7tg.su`) and domain appear suspicious and are unrelated to any known legitimate entity.
   - **Attachment Analysis**: The SHA256 hash of the attachment was analyzed using VirusTotal and confirmed as malicious by multiple security vendors.
3. **Potential Threat**: The email attempts to disguise the attachment as a resume and uses a common tactic (password-protected file) to bypass basic security controls. This could lead to unauthorized system access or data compromise.

---

**Summary of Actions**:
1. Evaluated the sender's details and identified inconsistencies indicating phishing activity.
2. Confirmed the malicious nature of the attached file through its SHA256 hash.
3. Updated the alert ticket status to **Escalated** for review by a level-two SOC analyst.

---

## **Resources**
- [Alert ticket](supporting-materials/Alert-ticket.pdf)
- [Phising incident response playbook](supporting-materials/Phishing-incident-response-playbook.pdf)