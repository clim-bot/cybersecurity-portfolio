## Activity Overview

In this activity, you will consider a scenario involving a customer of the company that you work for who experiences a security issue when accessing the company’s website. You will  identify the likely cause of the service interruption. Then, you will explain how the attack occurred and the negative impact it had on the website. 

In this course, you have learned about several common network attacks. You have learned their names, how they are carried out, and the characteristics of each attack from the perspective of the target. Understanding how attacks impact a network will help you troubleshoot issues on your organization’s network. It will also help you take steps to mitigate damage and protect a network from future attacks. To review attacks, visit 
Identify: Network Attacks

Be sure to complete this activity before moving on. The next course item will provide you with a completed exemplar to compare to your own work. 


## Scenario

Review the following scenario. Then complete the step-by-step instructions.

You work as a security analyst for a travel agency that advertises sales and promotions on the company’s website. The employees of the company regularly access the company’s sales webpage to search for vacation packages their customers might like. 

One afternoon, you receive an automated alert from your monitoring system indicating a problem with the web server. You attempt to visit the company’s website, but you receive a connection timeout error message in your browser.

You use a packet sniffer to capture data packets in transit to and from the web server. You notice a large number of TCP SYN requests coming from an unfamiliar IP address. The web server appears to be overwhelmed by the volume of incoming traffic and is losing its ability to respond to the abnormally large number of SYN requests. You suspect the server is under attack by a malicious actor. 

You take the server offline temporarily so that the machine can recover and return to a normal operating status. You also configure the company’s firewall to block the IP address that was sending the abnormal number of SYN requests. You know that your IP blocking solution won’t last long, as an attacker can spoof other IP addresses to get around this block. You need to alert your manager about this problem quickly and discuss the next steps to stop this attacker and prevent this problem from happening again. You will need to be prepared to tell your boss about the type of attack you discovered and how it was affecting the web server and employees.

## Step-By-Step Instructions

Follow the instructions and answer the question to complete the activity. Then, go to the next course item to compare your work to a completed exemplar.

### Step 1: Access the template
To use the template for this course item, click the link below and select Use Template. 

Link to template: [Cybersecurity incident report](supporting-materials/Cybersecurity-incident-report.pdf)

---

### Step 2: Access supporting materials
The following supporting materials will help you complete this activity. Keep them open as you proceed to the next steps. 

To use the supporting materials for this course item, click the following links and select Use Template. 

Links to supporting materials:
- [Wireshark TCP/HTTP log](supporting-materials/Wireshark-TCP_HTTP-log---TCP-log.csv)
- [How to read a Wireshark TCP/HTTP log](supporting-materials/How-to-read-a-Wireshark-TCP_HTTP-log.pdf)

---

### Step 3: Identify the Type of Attack that May Have Caused this Network Interruption (Section 1)

One potential explanation for the website's connection timeout error message is a **Denial of Service (DoS) attack**, specifically a **SYN flood attack**.

The logs show that a single IP address (203.0.113.0) is sending an abnormally high number of TCP SYN packets to the server (IP address 192.0.2.1). These packets initiate a connection but never complete the TCP three-way handshake.

This event could be classified as a SYN flood attack because:
- The server is reserving resources for incomplete TCP connections.
- The volume of incoming SYN packets overwhelms the server’s ability to handle legitimate traffic.
- Legitimate users experience connection timeouts due to the server’s inability to respond to their requests.

---

### Step 4: Explain How the Attack is Causing the Website to Malfunction (Section 2)

1. **Description of the Attack:**
   The attack is a **SYN flood attack**, a type of Denial of Service (DoS) attack. In this attack, the malicious actor sends a large volume of TCP SYN packets to the server to initiate connection handshakes. However, the attacker does not complete the three-way handshake by sending the final ACK packet. This leaves the server waiting indefinitely for the handshake to be completed, consuming system resources with half-open connections.

   **Main Symptoms or Characteristics:**
   - Large numbers of incomplete TCP handshakes (SYN packets without ACK responses).
   - Server resources (e.g., memory and CPU) become overwhelmed, leading to a reduced capacity to handle legitimate traffic.
   - Legitimate users experience delays or timeout errors when attempting to access the website.

2. **Impact on the Organization’s Network:**
   - The attack exhausts the server's connection queue by overwhelming it with fake SYN requests.
   - The server is unable to respond to legitimate requests, resulting in a **connection timeout error** for genuine users.
   - Employees accessing the company's sales webpage cannot retrieve vacation package information, disrupting business operations.

   The TCP logs show a large volume of SYN requests originating from the attacker’s IP address (203.0.113.0), while legitimate traffic (e.g., requests from employees’ IP addresses in the 198.51.100.0/24 range) experiences significant delays or fails entirely.

3. **Negative Consequences for the Organization:**
   - **Operational Disruption:** Employees cannot use the sales webpage to assist customers, potentially leading to lost sales opportunities.
   - **Reputational Damage:** Customers attempting to access the website may perceive the organization as unreliable or insecure, leading to a loss of trust.
   - **Resource Drain:** IT staff must allocate time and effort to investigate and mitigate the attack, diverting resources from other critical tasks.
   - **Financial Loss:** Prolonged downtime can result in lost revenue and the cost of deploying additional security measures.

4. **Potential Ways to Secure the Network:**
   To prevent similar attacks in the future, the organization should consider the following measures:
   - **Rate Limiting:** Limit the number of SYN requests that any single IP address can send within a given timeframe.
   - **SYN Cookies:** Use SYN cookies to prevent half-open connections from consuming excessive server resources.
   - **Firewalls and Intrusion Prevention Systems (IPS):** Configure firewalls to detect and block abnormal SYN flood traffic and implement IPS to monitor and respond to suspicious activities.
   - **Network Traffic Monitoring:** Continuously monitor network traffic to identify patterns indicative of an ongoing attack.
   - **Content Delivery Network (CDN):** Use a CDN to distribute network traffic, reducing the load on the primary server during an attack.
   - **DDoS Mitigation Services:** Subscribe to a DDoS protection service to detect and block malicious traffic.
 