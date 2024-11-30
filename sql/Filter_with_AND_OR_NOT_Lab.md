
# Filter with AND, OR, and NOT

## Activity Overview

In this lab, you’ll use the `AND`, `OR`, and `NOT` operators to create more complex filters for SQL queries. These operators are essential for retrieving specific data when multiple conditions must be applied.

---

## Scenario

You are investigating security issues and updating computers. You need to filter the required information from the database to:
1. Investigate failed login attempts after business hours.
2. Retrieve login attempts on specific dates.
3. Filter logins that didn't originate in Mexico.
4. Retrieve employees in the Marketing department located in the East building.
5. Retrieve employees in the Finance or Sales departments.
6. Retrieve employees who are not in the Information Technology department.

---

## Task 1: Retrieve After-Hours Failed Login Attempts

### Step 1: Retrieve failed logins after 18:00
Command:
```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = FALSE;
```
**Question**: How many failed login attempts occurred after 18:00?  
**Answer**: 19

---

## Task 2: Retrieve Login Attempts on Specific Dates

### Step 1: Retrieve logins on '2022-05-08' and '2022-05-09'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';
```
**Question**: How many login attempts were made on these two days?  
**Answer**: 75

---

## Task 3: Retrieve Login Attempts Outside of Mexico

### Step 1: Retrieve logins not originating from 'MEX' or 'MEXICO'
Command:
```sql
SELECT * 
FROM log_in_attempts 
WHERE NOT country LIKE 'MEX%';
```
**Question**: How many login attempts were made outside of Mexico?  
**Answer**: 144

---

## Task 4: Retrieve Employees in Marketing

### Step 1: Retrieve employees in the Marketing department in the East building
Command:
```sql
SELECT * 
FROM employees 
WHERE department = 'Marketing' AND office LIKE 'East%';
```
**Question**: What is the username of the first employee in the Marketing department in the East building?  
**Answer**: elarson

---

## Task 5: Retrieve Employees in Finance or Sales

### Step 1: Retrieve employees in the Finance or Sales departments
Command:
```sql
SELECT * 
FROM employees 
WHERE department = 'Finance' OR department = 'Sales';
```
**Question**: What is the username of the first employee in the Sales department?  
**Answer**: lrodriqu

---

## Task 6: Retrieve All Employees Not in IT

### Step 1: Retrieve employees who are not in the Information Technology department
Command:
```sql
SELECT * 
FROM employees 
WHERE NOT department = 'Information Technology';
```
**Question**: How many employees are not in the Information Technology department?  
**Answer**: 161

---

## Conclusion

Great work! You now have practical experience in using SQL to:
1. Retrieve information from a database.
2. Apply `AND`, `OR`, and `NOT` operators to filter SQL queries.

These skills are essential for running complex SQL queries to get specific data from a database.

---

## End Your Lab

1. Click **End Lab** and confirm.
2. Provide feedback if desired.
3. Refresh the course tab to mark the lab as complete.
