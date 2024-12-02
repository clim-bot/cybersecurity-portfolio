-- Step 1: Insert data into the Machines table without employee_id references
INSERT INTO Machines (device_id, employee_id, operating_system, email_client, OS_patch_date)
VALUES
('a897b209c326', NULL, 'OS1', 'Thunderbird', '2024-01-01'),
('d620e574f957', NULL, 'OS1', 'Outlook', '2024-01-02'),
('g164h566i795', NULL, 'OS2', 'Gmail', '2024-01-03'),
('h784i120j837', NULL, 'OS1', 'Yahoo Mail', '2024-01-04');

-- Step 2: Insert data into the Employees table
INSERT INTO Employees (employee_id, device_id, username, department, office)
VALUES
(1188, 'g164h566i795', 'user1188', 'Marketing', 'West-252'),
(1189, 'h784i120j837', 'user1189', 'Finance', 'West-342'),
(1190, NULL, 'user1190', 'Sales', 'Central-270'),
(1191, NULL, 'user1191', 'IT', 'Central-300');

-- Step 3: Update Machines table to link employee_id references
UPDATE Machines
SET employee_id = 1188
WHERE device_id = 'g164h566i795';

UPDATE Machines
SET employee_id = 1189
WHERE device_id = 'h784i120j837';
