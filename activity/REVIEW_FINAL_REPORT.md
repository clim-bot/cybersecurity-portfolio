
# Final Report Analysis

## Step 1: Supporting Materials Review

### **Incident Summary**
- **Incident Date and Time**: December 28, 2022, at 7:20 p.m. PT
- **Type of Incident**: Data theft
- **Affected Records**: Approximately 50,000 customer records
- **Financial Impact**: Estimated $100,000 in direct costs and potential loss of revenue

---

## Step 2: Quiz Questions and Answers

### **Question 1**: What type of security incident was the organization affected by?
- **Answer**: **Data theft**

### **Question 2**: Which section of the report includes an explanation of the root cause of the incident?
- **Answer**: **Investigation**

### **Question 3**: What did the attacker use to exploit the e-commerce web application vulnerability?
- **Answer**: **Forced browsing**

### **Question 4**: What recommendations did the organization implement to prevent future recurrences? (Select two answers)
- **Answer 1**: **Implemented access control mechanisms**
- **Answer 2**: **Implemented routine vulnerability scans**

---

## Additional Notes

### **Root Cause of the Incident**
- A vulnerability in the e-commerce web application allowed a **forced browsing attack**, enabling the attacker to modify the order number in the URL string of a purchase confirmation page and access customer transaction data.

### **Response and Remediation**
- Disclosed the breach to customers via the public relations department.
- Offered free identity protection services to affected customers.
- Analyzed web server logs to confirm the method and extent of the data theft.

### **Recommendations for Future Prevention**
1. Perform routine vulnerability scans and penetration testing.
2. Implement access control mechanisms:
   - Allowlisting specific URLs.
   - Ensuring content access is restricted to authenticated users.

---

## Resources
- [Final Report](supporting-materials/Final-report.pdf)