-- INNER JOIN
SELECT username, office, operating_system
FROM employees
INNER JOIN machines on employees.employee_id = machines.employee_id;

-- LEFT JOIN
SELECT 
    employees.employee_id AS emp_id, 
    employees.office AS emp_office, 
    employees.device_id AS emp_device_id, 
    machines.operating_system AS machine_os
FROM employees
LEFT JOIN machines 
ON employees.employee_id = machines.employee_id;

-- RIGHT JOIN
SELECT 
    employees.employee_id AS emp_id, 
    employees.office AS emp_office, 
    employees.device_id AS emp_device_id, 
    machines.operating_system AS machine_os
FROM employees
RIGHT JOIN machines 
ON employees.employee_id = machines.employee_id;

-- OUTER JOIN
SELECT 
    employees.employee_id AS emp_id, 
    employees.office AS emp_office, 
    employees.device_id AS emp_device_id, 
    machines.operating_system AS machine_os
FROM employees
FULL OUTER JOIN machines 
ON employees.employee_id = machines.employee_id;

