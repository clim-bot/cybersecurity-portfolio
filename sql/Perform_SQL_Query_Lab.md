
# Perform a SQL Query

## Activity Overview

In this lab, you’ll use SQL to retrieve and analyze data from a database. You will:
- Use the `SELECT` and `FROM` keywords to query data.
- Use the `ORDER BY` keyword to sort query results.

This activity will help you understand how to extract and analyze information from databases, an essential task for security analysts.

---

## Scenario

You need to:
1. Determine which employee devices must be updated.
2. Investigate user login activity for unusual behavior.
3. Use the `ORDER BY` keyword to organize query results.

---

## Task 1: Retrieve Employee Device Data

### Step 1: Select All Device Information
Command:
```sql
SELECT *
FROM machines;
```

### Step 2: Select Specific Columns
Command:
```sql
SELECT device_id, email_client
FROM machines;
```
**Question**: What email client is returned in the third row?  
**Answer**: Email Client 2

---

### Step 3: Select Operating System and Patch Date
Command:
```sql
SELECT device_id, operating_system, OS_patch_date
FROM machines;
```
**Question**: What is the patch date of the first entry?  
**Answer**: 2021-09-01

---

## Task 2: Investigate Login Activity

### Step 1: Check Login Locations
Command:
```sql
SELECT event_id, country
FROM log_in_attempts;
```
**Question**: Were any login attempts made from Australia?  
**Answer**: No

---

### Step 2: Check Login Times
Command:
```sql
SELECT username, login_date, login_time
FROM log_in_attempts;
```
**Question**: What username is returned in the fifth row?  
**Answer**: jrafael

---

### Step 3: Select All Login Attempt Data
Command:
```sql
SELECT *
FROM log_in_attempts;
```

---

## Task 3: Order Login Attempts Data

### Step 1: Order by Login Date
Command:
```sql
SELECT *
FROM log_in_attempts
ORDER BY login_date;
```
**Question**: What are the username and login date of the first record returned?  
**Answer**: ivelasco on 2022-05-08

---

### Step 2: Order by Login Date and Time
Command:
```sql
SELECT *
FROM log_in_attempts
ORDER BY login_date, login_time;
```
**Question**: What are the username and login time of the first record returned?  
**Answer**: bsand at 00:19:11

---

## Conclusion

Great work! You now have practical experience in running basic SQL queries to:
- Select specific columns from a table.
- Select all columns from a table using `*`.
- Sort query results using the `ORDER BY` keyword.

These basic queries form the foundation for running more advanced queries and applying filters.

---

## End Your Lab

1. Click **End Lab** and confirm.
2. Provide feedback if desired.
3. Refresh the course tab to mark the lab as complete.
