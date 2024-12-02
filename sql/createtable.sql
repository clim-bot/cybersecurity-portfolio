-- Drop Machines table if it exists
DROP TABLE IF EXISTS Machines;

-- Drop Employees table if it exists
DROP TABLE IF EXISTS Employees;

-- Create the Machines table first
CREATE TABLE Machines (
    device_id CHAR(32) PRIMARY KEY,      -- Unique hash identifier for each device
    employee_id INT,                     -- Allow NULL for unassigned devices
    operating_system VARCHAR(100) NOT NULL, -- Operating system of the device
    email_client VARCHAR(100) NOT NULL,  -- Email client installed on the device
    OS_patch_date DATE NOT NULL          -- Date the operating system was last patched
);

-- Create the Employees table next
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,         -- Unique identifier for each employee
    device_id CHAR(32),                  -- Hash to represent the device ID
    username VARCHAR(100) NOT NULL,      -- Username of the employee
    department VARCHAR(100) NOT NULL,    -- Department the employee belongs to
    office VARCHAR(100) NOT NULL,        -- Office location of the employee
    CONSTRAINT fk_device FOREIGN KEY (device_id) REFERENCES Machines(device_id) -- Foreign key to Machines table
);

-- Add the foreign key in Machines table referencing Employees
ALTER TABLE Machines
ADD CONSTRAINT fk_employee FOREIGN KEY (employee_id) REFERENCES Employees(employee_id);
