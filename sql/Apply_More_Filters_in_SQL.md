
# Apply More Filters in SQL

## Activity Overview

In this lab, you’ll apply operators like `=`, `>`, `<`, `>=`, `<=`, and `BETWEEN` to filter data from a MariaDB database. These operators help in querying specific numbers and dates, which is crucial when investigating security incidents.

---

## Scenario

You’re investigating a recent security incident and need to gather information about login attempts for certain dates and times. Here’s what you’ll do:
1. Retrieve login attempts made after a specific date.
2. Narrow the search by filtering logins within a date range.
3. Investigate logins made at certain times.
4. Filter login attempts based on event IDs.

---

## Task 1: Retrieve Login Attempts After a Certain Date

### Step 1: Retrieve logins after '2022-05-09'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE login_date > '2022-05-09';
```
**Question**: How many login attempts were made after 2022-05-09?  
**Answer**: 125

---

### Step 2: Retrieve logins on or after '2022-05-09'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE login_date >= '2022-05-09';
```
**Question**: How many login attempts were made on or after 2022-05-09?  
**Answer**: 165

---

## Task 2: Retrieve Logins in a Date Range

### Step 1: Filter logins between '2022-05-09' and '2022-05-11'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE login_date BETWEEN '2022-05-09' AND '2022-05-11';
```
**Question**: How many login attempts were made between 2022-05-09 and 2022-05-11?  
**Answer**: 123

---

## Task 3: Investigate Logins at Certain Times

### Step 1: Retrieve logins before '07:00:00'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE login_time < '07:00:00';
```
**Question**: What is the username of the fifth record returned?  
**Answer**: eraab

---

### Step 2: Retrieve logins between '06:00:00' and '07:00:00'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE login_time BETWEEN '06:00:00' AND '07:00:00';
```
**Question**: What time was the earliest login attempt between 06:00:00 and 07:00:00?  
**Answer**: 06:01:31

---

## Task 4: Investigate Logins by Event ID

### Step 1: Retrieve logins with event_id >= 100
Command:
```sql
SELECT event_id, username, login_date 
FROM log_in_attempts 
WHERE event_id >= 100;
```
**Question**: What is the login date of the third result returned?  
**Answer**: 2022-05-09

---

### Step 2: Retrieve logins with event_id between 100 and 150
Command:
```sql
SELECT event_id, username, login_date
FROM log_in_attempts 
WHERE event_id BETWEEN 100 AND 150;
```
**Question**: What is the username of the seventh result returned?  
**Answer**: tmitchel

---

## Conclusion

Great work! You’ve successfully applied:
1. The `WHERE` keyword.
2. The `BETWEEN` and `AND` operators.
3. Operators for numeric and date/time data types (e.g., `=`, `>`, `>=`).

These skills will help you filter data efficiently and investigate incidents effectively.

---

## End Your Lab

1. Click **End Lab** and confirm.
2. Provide feedback if desired.
3. Refresh the course tab to mark the lab as complete.
