# Analyze Your First Packet with Wireshark

## Experiment  
**Lab**  
- **Schedule**: 1 hour  
- **Cost**: No cost  
- **Level**: Advanced  
- **Note**: This lab may incorporate AI tools to support your learning.

---

## Activity Overview  
As a security analyst, analyzing network traffic is essential to understanding the type of traffic sent to and from systems. Network protocol analyzers like **Wireshark**, with its graphical user interface (GUI), simplify packet analysis by identifying patterns and filtering data for relevant information.

In this lab, you’ll use Wireshark to:  
- Inspect packet data.  
- Apply filters to sort through packet information efficiently.  

### **Scenario**  
You are a security analyst investigating network traffic to a website. The goal is to filter data to:  
1. Identify source and destination IP addresses.  
2. Examine connection protocols.  
3. Analyze data packets for information exchanged between systems.

### **Tasks Overview**  
1. Explore data with Wireshark.  
2. Apply basic filters and inspect packets.  
3. Use filters to select packets.  
4. Examine DNS traffic.  
5. Explore TCP packets.

---

## Task 1: Explore Data with Wireshark  

1. **Open the packet capture file**:  
   - Double-click the sample file on the Windows desktop (file icon shows a shark fin and `.pcap` extension).  
   - Maximize the Wireshark application window.  

2. **Understand Key Columns in Wireshark**:  
   - **No.**: Packet index number.  
   - **Time**: Timestamp of the packet.  
   - **Source/Destination**: IP addresses of sender/receiver.  
   - **Protocol**: Protocol used in the packet.  
   - **Length**: Packet length.  
   - **Info**: Data payload details.

3. **Visual cues**:  
   - Light blue: DNS traffic.  
   - Green: TCP and HTTP traffic.  

4. **Question**:  
   What is the protocol of the first packet where the **Info** column starts with "Echo (ping) request"?  
   - **Answer**: ICMP.

---

## Task 2: Apply a Basic Wireshark Filter and Inspect a Packet  

1. Apply the filter:  
   ```
   ip.addr == 142.250.1.139
   ```
   - This reduces the packet list to those involving the specified IP address.  

2. Inspect the packet:  
   - Double-click the first **TCP** packet to open the detailed view.  
   - Expand subtrees to explore layers:  
     - **Frame**: Packet overview (length, arrival time).  
     - **Ethernet II**: Source/destination MAC addresses.  
     - **IPv4**: Source/destination IP addresses, internal protocol.  
     - **TCP**: Source/destination ports, sequence numbers, flags.  

3. **Question**:  
   What is the TCP destination port for this packet?  
   - **Answer**: Port 80.

---

## Task 3: Use Filters to Select Packets  

1. Filter by source IP:  
   ```
   ip.src == 142.250.1.139
   ```
2. Filter by destination IP:  
   ```
   ip.dst == 142.250.1.139
   ```
3. Filter by MAC address:  
   ```
   eth.addr == 42:01:ac:15:e0:02
   ```

4. **Question**:  
   What is the protocol contained in the **IPv4** subtree for the first packet?  
   - **Answer**: TCP.

---

## Task 4: Use Filters to Explore DNS Packets  

1. Apply the DNS traffic filter:  
   ```
   udp.port == 53
   ```
2. Inspect DNS packets:  
   - Expand **DNS (query)** subtree.  
   - Examine **Queries** and **Answers** sections.

3. **Question**:  
   What is the IP address displayed in the **Answers** section for the DNS query `opensource.google.com`?  
   - **Answer**: 142.250.1.139.

---

## Task 5: Use Filters to Explore TCP Packets  

1. Apply the TCP traffic filter:  
   ```
   tcp.port == 80
   ```

2. Inspect packet details:  
   - **Time to Live**: 64.  
   - **Frame Length**: 54 bytes.  
   - **Header Length**: 20 bytes.  
   - **Destination Address**: 169.254.169.254.  

3. Filter by specific text:  
   ```
   tcp contains "curl"
   ```

---

## Conclusion  

Congratulations! You’ve gained practical experience using Wireshark to:  
- Open saved packet capture files.  
- View high-level packet data.  
- Use filters to inspect detailed packet data.  

### End the Lab  
1. Click **End Lab** and confirm.  
2. Submit feedback (optional).  
3. Refresh the course browser tab to mark the lab as complete.
