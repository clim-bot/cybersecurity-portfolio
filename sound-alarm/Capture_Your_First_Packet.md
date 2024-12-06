# Capture Your First Packet

## Experiment  
**Lab**  
- **Schedule**: 1 hour  
- **Cost**: No cost  
- **Level**: Introductory  
- **Note**: This lab may incorporate AI tools to support your learning.

---

## Activity Overview  
As a security analyst, it’s important to know how to capture and filter network traffic in a Linux environment. You’ll also need to understand basic concepts associated with network interfaces.

In this lab activity, you will:  
- Use `tcpdump` to capture network traffic.  
- Save captured data in a packet capture (p-cap) file.  
- Examine the contents of the captured packet data to focus on specific types of traffic.

### **Scenario**  
You are a network analyst tasked with using `tcpdump` to capture and analyze live network traffic from a Linux virtual machine.

The lab begins with your user account, `analyst`, already logged in to a Linux terminal. Your home directory contains a sample packet capture file that you will analyze.

---

## Tasks Overview  
1. Identify network interfaces.  
2. Inspect live network traffic with `tcpdump`.  
3. Capture network traffic into a file.  
4. Filter the captured packet data.

---

## Task 1: Identify Network Interfaces  

1. Use `ifconfig` to identify available network interfaces:  
   ```bash
   sudo ifconfig
   ```

   - Example output includes the `eth0` interface, which will be used in this lab.  

2. Alternatively, use `tcpdump` to identify interface options:  
   ```bash
   sudo tcpdump -D
   ```

---

## Task 2: Inspect Live Network Traffic with `tcpdump`  

1. Use `tcpdump` to filter live packet data from the `eth0` interface:  
   ```bash
   sudo tcpdump -i eth0 -v -c5
   ```

   - **Options**:  
     - `-i eth0`: Monitor the `eth0` interface.  
     - `-v`: Display detailed packet data.  
     - `-c5`: Capture 5 packets and stop.  

2. Analyze the output for timestamps, protocols, and other details.  

---

## Task 3: Capture Network Traffic into a File  

1. Save captured data to a file:  
   ```bash
   sudo tcpdump -i eth0 -nn -c9 port 80 -w capture.pcap &
   ```

   - **Options**:  
     - `-nn`: Disable name resolution.  
     - `-c9`: Capture 9 packets.  
     - `port 80`: Filter HTTP traffic.  
     - `-w capture.pcap`: Save data to `capture.pcap`.  
     - `&`: Run in the background.  

2. Generate HTTP traffic for capture:  
   ```bash
   curl opensource.google.com
   ```

3. Verify the capture file:  
   ```bash
   ls -l capture.pcap
   ```

---

## Task 4: Filter Captured Packet Data  

1. Filter packet headers:  
   ```bash
   sudo tcpdump -nn -r capture.pcap -v
   ```

2. View detailed packet data in hex and ASCII:  
   ```bash
   sudo tcpdump -nn -r capture.pcap -X
   ```

---

## Test Your Understanding  

### **Questions**  

1. **What command would you use to capture 3 packets on any interface with the verbose option?**  
   - **Answer**: `sudo tcpdump -c3 -i any -v`  

2. **What does the -i option indicate?**  
   - **Answer**: The network interface to monitor.  

3. **What type of information does the -v option include?**  
   - **Answer**: Verbose information.  

4. **What `tcpdump` command can you use to identify the interfaces available for packet capture?**  
   - **Answer**: `sudo tcpdump -D`  

---

## Conclusion  

Congratulations! You have gained practical experience to:  
- Identify network interfaces.  
- Use the `tcpdump` command to capture network data for inspection.  
- Interpret packet details output by `tcpdump`.  
- Save and load packet data for analysis.  

### End the Lab  
1. Click **End Lab** and confirm.  
2. Submit feedback (optional).  
3. Refresh the course browser tab to mark the lab as complete.
