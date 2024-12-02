## Activity Overview
In this activity, you will create a new portfolio document to demonstrate your experience using SQL. You can add this document to your cybersecurity portfolio, which you can share with prospective employers or recruiters. To review the importance of building a professional portfolio and options for creating your portfolio, read 
Create a cybersecurity portfolio
.

To create your portfolio document, you will review a scenario and follow a series of steps. This scenario is connected to the lab you have just completed about using the AND, OR, and NOT operators in SQL to filter for information. You will explain the queries you performed in that lab, and this will help you prepare for future job interviews and other steps in the hiring process.

Be sure to complete this activity and answer the questions that follow before moving on. The next course item will provide you with a completed exemplar to compare to your own work. 

## Scenario

Review the scenario below. Then complete the step-by-step instructions.

You are a security professional at a large organization. Part of your job is to investigate security issues to help keep the system secure. You recently discovered some potential security issues that involve login attempts and employee machines.

Your task is to examine the organization’s data in their employees and log_in_attempts tables. You’ll need to use SQL filters to retrieve records from different datasets and investigate the potential security issues.

Note: This scenario involves the same queries as the ones the Filter with AND, OR, and NOT lab. You can revisit the lab to get screenshots to include in your portfolio document. If you choose, it's also possible to complete this activity without revisiting the lab by typing your queries in the template

## Step-By-Step Instructions

Follow the instructions to complete each step of the activity. Then, answer the 8 questions in the next course item before comparing your work to a completed exemplar.

### Step 1: Access the template
To use the template for this course item:

- Click the following link and select Use Template: 
[Apply filters to SQL queries](supporting-materials/Apply-filters-to-SQL-queries.pdf)
 (In this step, you will just open the template. More instructions for how to use the template will be included in later steps.)

 ---

 ### Step 2: Access supporting materials
 The following supporting materials will help you complete this activity. Keep them open as you proceed to the next steps. 

Note:  It is recommended that you use the Filter with AND, OR, and NOT lab to complete this portfolio activity.

To use the supporting materials for this course item, click the following links:

- The Instructions for including SQL queries document provides instructions and best practices for including samples of SQL queries in your portfolio activity:
 [Instructions for including SQL queries](supporting-materials/Instructions-for-including-SQL-queries.pdf)

- The Table formats document describes how the tables used for this portfolio activity are organized:
 [Table formats](supporting-materials/Table-formats.pdf)

 ---

 ### Step 3: Retrieve After Hours Failed Login Attempts

```sql
SELECT *
FROM log_in_attempts
WHERE success = 0
  AND login_time > '18:00';
```

**Description**:  
This query retrieves all failed login attempts (`success = 0`) that occurred after 6:00 PM (`login_time > '18:00'`). This helps investigate security incidents outside of standard business hours.

---

### Step 4: Retrieve Login Attempts on Specific Dates

```sql
SELECT *
FROM log_in_attempts
WHERE login_date IN ('2022-05-08', '2022-05-09');
```

**Description**:  
This query filters login attempts that occurred on specific dates (`2022-05-08` and `2022-05-09`). The `IN` keyword simplifies the condition by matching multiple values in the `login_date` column.

---

### Step 5: Retrieve Login Attempts Outside of Mexico

```sql
SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%'
  AND country NOT LIKE 'MEXICO%';
```

**Description**:  
This query retrieves login attempts outside of Mexico. The `NOT LIKE` keyword ensures that rows with `country` values starting with "MEX" or "MEXICO" are excluded.

---

### Step 6: Retrieve Employees in Marketing

```sql
SELECT *
FROM employees
WHERE department LIKE '%Marketing%'
  AND office LIKE 'East-%';
```

**Description**:  
This query retrieves employees in the Marketing department who work in offices located in the East building (`office LIKE 'East-%'`). The `LIKE` keyword allows flexible matching.

---

### Step 7: Retrieve Employees in Finance or Sales

```sql
SELECT *
FROM employees
WHERE department IN ('Finance', 'Sales');
```

**Description**:  
This query retrieves employees from the Finance or Sales departments. The `IN` keyword simplifies the condition by matching multiple values in the `department` column.

---

### Step 8: Retrieve All Employees Not in IT

```sql
SELECT *
FROM employees
WHERE department NOT LIKE '%Information Technology%';
```

**Description**:  
This query retrieves employees who are not part of the IT department. The `NOT LIKE` keyword excludes rows where `department` contains "Information Technology".

---

### Summary
The queries retrieve failed login attempts, login activities on specific dates, and employee information by department and location. These SQL filters allow for targeted investigations into security issues while ensuring organizational assets are secure.

---

### Self-Assessment Checklist
1. [X] Screenshots or typed queries included.
2. [X] Project description provided.
3. [X] Explanations of queries included.
4. [X] Summary at the end included.
5. [X] Use of `LIKE` for pattern matching explained.
6. [X] Filtering for dates and times detailed.
7. [X] Use of `AND` and `OR` for multiple conditions included.
8. [X] Use of `NOT` in filters described.