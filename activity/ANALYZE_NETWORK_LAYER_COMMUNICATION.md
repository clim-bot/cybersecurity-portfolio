## Activity Overview

In this activity, you will analyze DNS and ICMP traffic in transit using data from a network protocol analyzer tool. You will identify which network protocol was utilized in assessment of the cybersecurity incident. 

In the internet layer of the TCP/IP model, the IP formats data packets into IP datagrams. The information provided in the datagram of an IP packet can provide security analysts with insight into suspicious data packets in transit.

Knowing how to identify potentially malicious traffic on a network can help cybersecurity analysts assess security risks on a network and reinforce network security.

Be sure to complete this activity before moving on. The next course item will provide you with a completed exemplar to compare to your own work. 

## Scenario

Review the scenario below. Then complete the step-by-step instructions.

You are a cybersecurity analyst working at a company that specializes in providing IT services for clients. Several customers of clients reported that they were not able to access the client company website www.yummyrecipesforme.com, and saw the error “destination port unreachable” after waiting for the page to load. 

You are tasked with analyzing the situation and determining which network protocol was affected during this incident. To start, you attempt to visit the website and you also receive the error “destination port unreachable.” To troubleshoot the issue, you load your network analyzer tool, tcpdump, and attempt to load the webpage again. To load the webpage, your browser sends a query to a DNS server via the UDP protocol to retrieve the IP address for the website's domain name; this is part of the DNS protocol. Your browser then uses this IP address as the destination IP for sending an HTTPS request to the web server to display the webpage  The analyzer shows that when you send UDP packets to the DNS server, you receive ICMP packets containing the error message: “udp port 53 unreachable.” 

![alt text](images/image.png)

In the tcpdump log, you find the following information:

1. The first two lines of the log file show the initial outgoing request from your computer to the DNS server requesting the IP address of yummyrecipesforme.com. This request is sent in a UDP packet.

2. The third and fourth lines of the log show the response to your UDP packet. In this case, the ICMP 203.0.113.2 line is the start of the error message indicating that the UDP packet was undeliverable to port 53 of the DNS server.

3. In front of each request and response, you find timestamps that indicate when the incident happened. In the log, this is the first sequence of numbers displayed: 13:24:32.192571. This means the time is 1:24 p.m., 32.192571 seconds.

4. After the timestamps, you will find the source and destination IP addresses. In the first line, where the UDP packet travels from your browser to the DNS server, this information is displayed as: 192.51.100.15 > 203.0.113.2.domain. The IP address to the left of the greater than (>) symbol is the source address, which in this example is your computer’s IP address. The IP address to the right of the greater than (>) symbol is the destination IP address. In this case, it is the IP address for the DNS server: 203.0.113.2.domain. For the ICMP error response, the source address is 203.0.113.2 and the destination is your computers IP address 192.51.100.15.

5. After the source and destination IP addresses, there can be a number of additional details like the protocol, port number of the source, and flags. In the first line of the error log, the query identification number appears as: 35084. The plus sign after the query identification number indicates there are flags associated with the UDP message. The "A?" indicates a flag associated with the DNS request for an A record, where an A record maps a domain name to an IP address. The third line displays the protocol of the response message to the browser: "ICMP," which is followed by an ICMP error message.

6. The error message, "udp port 53 unreachable" is mentioned in the last line. Port 53 is a port for DNS service. The word "unreachable" in the message indicates the UDP message requesting an IP address for the domain "www.yummyrecipesforme.com" did not go through to the DNS server because no service was listening on the receiving DNS port.

7. The remaining lines in the log indicate that ICMP packets were sent two more times, but the same delivery error was received both times. 

Now that you have captured data packets using a network analyzer tool, it is your job to identify which network protocol and service were impacted by this incident. Then, you will need to write a follow-up report. 

As an analyst, you can inspect network traffic and network data to determine what is causing network-related issues during cybersecurity incidents. Later in this course, you will demonstrate how to manage and resolve incidents. For now, you only need to analyze the situation. 

This event, in the meantime, is being handled by security engineers after you and other analysts have reported the issue to your direct supervisor. 

## Step-By-Step Instructions

Follow the instructions and answer the question below to complete the activity. Then, go to the next course item to compare your work to a completed exemplar.

### Step 1: Access the template
To use the template for this course item, click the link below and select Use Template. 

Use the sentence starters and prompts provided in the template to support your thinking and ensure that you include all relevant details about the incident.

Link to template:
- [Cybersecurity incident report template](supporting-materials/Cybersecurity-incident-report-network-traffic-analysis.pdf)

---

### Step 2: Access supporting materials  
The following supporting materials will help you complete this activity. Keep them open as you proceed to the next steps. 

To use the supporting materials for this course item,  click the following links and select Use Template. 

Link to supporting materials:
- [Example of a Cybersecurity Incident Report](supporting-materials/Example-of-a-Cybersecurity-Incident-Report.pdf)

---


### Step 3: Provide a summary of the problem found in the tcpdump log (Part 1)

- **The UDP protocol reveals that:**
  UDP packets sent to resolve the domain "yummyrecipesforme.com" encountered issues when attempting to connect to the DNS server.

- **This is based on the results of the network analysis, which show that the ICMP echo reply returned the error message:**
  "udp port 53 unreachable," indicating that the DNS server at `203.0.113.2` was not responding to UDP queries on port 53.

- **The port noted in the error message is used for:**
  DNS traffic, which resolves domain names to IP addresses.

- **The most likely issue is:**
  The DNS server does not have a service actively listening on port 53, which is required to process DNS requests. This could be due to a misconfiguration, service downtime, or a potential attack.

---

### Step 4: Explain your analysis of the data and provide one solution to implement (Part 2)

- **Time incident occurred:**
  The incident was first reported at 13:24:32.192571 (timestamp from tcpdump log).

- **Explain how the IT team became aware of the incident:**
  Customers reported they could not access "www.yummyrecipesforme.com" and received a "destination port unreachable" error message. Further tests confirmed this error.

- **Explain the actions taken by the IT department to investigate the incident:**
  The IT team utilized `tcpdump` to analyze network traffic between the user's computer and the DNS server. The analysis focused on identifying trends in the data, such as the repeated ICMP error messages.

- **Note key findings of the IT department's investigation:**
  1. UDP packets sent from the user's computer to the DNS server failed due to "udp port 53 unreachable" errors.
  2. The issue originated from the DNS server, as no service was listening on port 53.
  3. ICMP packets confirmed repeated delivery errors to the user's device.

- **Note a likely cause of the incident:**
  The DNS service on port 53 may have been disabled or misconfigured on the DNS server. Alternatively, it could have been caused by a firewall or security policy blocking incoming UDP traffic to port 53.

- **Proposed next steps:**
  1. Verify whether the DNS service is running on port 53 on the server.
  2. Check firewall rules to ensure UDP traffic to port 53 is not blocked.
  3. Contact the DNS server administrator to confirm proper configuration and availability.
  4. Monitor server logs for suspicious activity that may indicate an attack.

- **Current status of the issue:**
  The issue is ongoing. Clients cannot resolve the domain "yummyrecipesforme.com," and the DNS service is unreachable.