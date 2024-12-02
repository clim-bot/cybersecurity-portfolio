
# Complete a SQL Join

## Lab Overview
- **Time Estimate**: 1 hour  
- **Cost**: No cost  
- **Difficulty**: Introductory  

This lab may incorporate AI tools to support your learning.

### Activity Overview
As a security analyst, you’ll often find that you need data from more than one table. SQL joins enable you to combine tables that contain a shared column, which is helpful when you need to connect information appearing in different tables.

In this lab, you’ll use SQL joins to connect separate tables and retrieve needed information.

### Scenario
You are investigating a recent security incident that compromised some machines. You need to retrieve required information from the database for the investigation by:

1. Using an `INNER JOIN` to identify which employees are using which machines.
2. Using `LEFT` and `RIGHT JOINs` to find unlinked machines and employees.
3. Using an `INNER JOIN` to list all login attempts made by employees.

---

## Task 1: Match Employees to Their Machines

### Query
```sql
SELECT * 
FROM machines 
INNER JOIN employees ON machines.device_id = employees.device_id;
```

### Question
**How many rows did the inner join return?**  
- 132  
- 185  
- 124  
- 85  

**Answer**: The inner join query returned **185 rows**.

---

## Task 2: Return More Data

### LEFT JOIN
```sql
SELECT * 
FROM machines 
LEFT JOIN employees ON machines.device_id = employees.device_id;
```

**Question**: What is the value in the username column for the last record returned?  
- NULL  
- cgriffin  
- asundara  
- areyes  

**Answer**: The last username returned is **NULL**.

### RIGHT JOIN
```sql
SELECT * 
FROM machines 
RIGHT JOIN employees ON machines.device_id = employees.device_id;
```

**Question**: What is the value in the username column for the last record returned?  
- areyes  
- cgriffin  
- NULL  
- asundara  

**Answer**: The value in the username column for the last record returned is **areyes**.

---

## Task 3: Retrieve Login Attempt Data

### Query
```sql
SELECT * 
FROM employees 
INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;
```

**Question**: How many records are returned by this inner join?  
- 145  
- 175  
- 210  
- 200  

**Answer**: There are **200 records** returned by the inner join.

---

## Conclusion
You have completed this activity and now have practical experience in using SQL joins, including:
- `INNER JOIN`  
- `LEFT JOIN`  
- `RIGHT JOIN`  

Great work using SQL joins to obtain the precise data you need!

---

## End Your Lab
Before ending the lab, ensure you’ve completed all tasks. To end the lab:
1. Click **End Lab**. A confirmation box will appear.
2. Click **Submit** to confirm. This removes your access to the Bash shell.
3. Optionally rate the lab and provide feedback.
4. Close the lab browser tab to return to your course.
5. Refresh the course browser tab to mark the lab as complete.
