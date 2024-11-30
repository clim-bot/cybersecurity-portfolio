
# Filter a SQL Query

## Activity Overview

In this lab, you’ll apply filters to SQL queries to retrieve specific information from a MariaDB database. This hands-on practice will enhance your skills in querying and analyzing data efficiently.

---

## Scenario

You need to:
1. List all organization machines and their operating systems.
2. Retrieve a list of machines with a specific operating system.
3. Retrieve a list of employees in specific departments.
4. Identify employee machines in the South building.

You’ll add filters to SQL queries to quickly find the information needed.

---

## Task 1: List All Organization Machines

### Step 1: Retrieve device ID and operating systems
Command:
```sql
SELECT device_id, operating_system 
FROM machines;
```
**Question**: How many rows were returned from the machines table?  
**Answer**: 200 rows.

---

## Task 2: Retrieve a List of Machines with OS 2

### Step 1: Filter machines with `OS 2`
Command:
```sql
SELECT device_id, operating_system 
FROM machines 
WHERE operating_system = 'OS 2';
```
**Question**: How many machines in the database use the OS 2 operating system?  
**Answer**: 80 machines.

---

## Task 3: List Employees in Specific Departments

### Step 1: Retrieve employees in the Finance department
Command:
```sql
SELECT * 
FROM employees 
WHERE department = 'Finance';
```
**Question**: What is the `employee_id` of the first row returned?  
**Answer**: 1003.

---

### Step 2: Retrieve employees in the Sales department
Command:
```sql
SELECT * 
FROM employees 
WHERE department = 'Sales';
```
**Question**: How many employees work in the Sales department?  
**Answer**: 33 employees.

---

## Task 4: Identify Employee Machines

### Step 1: Identify the employee in `South-109`
Command:
```sql
SELECT * 
FROM employees 
WHERE office = 'South-109';
```
**Question**: Which employee uses the computer with the issue?  
**Answer**: jlansky.

---

### Step 2: Retrieve all employees in the South building
Command:
```sql
SELECT * 
FROM employees 
WHERE office LIKE 'South%';
```
**Question**: Which department does the first employee listed in the South building belong to?  
**Answer**: Finance.

---

## Conclusion

Great work! You now have practical experience in using SQL to:
1. Apply the `WHERE` clause to filter query results.
2. Use the `LIKE` operator to filter for patterns.

These skills are crucial for efficiently retrieving specific data from a database.

---

## End Your Lab

1. Click **End Lab** and confirm.
2. Provide feedback if desired.
3. Refresh the course tab to mark the lab as complete.
