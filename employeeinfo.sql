-- Drop old tables if they exist
DROP TABLE IF EXISTS EmployeePosition;
DROP TABLE IF EXISTS EmployeeInfo;

-- EmployeeInfo Table
CREATE TABLE EmployeeInfo (
  EmpID INT PRIMARY KEY,
  EmpFname   VARCHAR(50),
  EmpLname   VARCHAR(50),
  Department VARCHAR(50),
  Project    VARCHAR(10),
  Address    VARCHAR(100),
  DOB        DATE,
  Gender     CHAR(1)
);

-- Insert EmployeeInfo Data
INSERT INTO EmployeeInfo (EmpID, EmpFname, EmpLname, Department, Project, Address, DOB, Gender) VALUES
(1, 'Sanjay', 'Mehra',    'HR',     'P1', 'Hyderabad (HYD)', '1976-12-01', 'M'),
(2, 'Ananya', 'Mishra',   'Admin',  'P2', 'Delhi (DEL)',      '1968-05-02', 'F'),
(3, 'Rohan',  'Diwan',    'Account','P3', 'Mumbai (BOM)',     '1980-01-01', 'M'),
(4, 'Sonia',  'Kulkarni', 'HR',     'P1', 'Hyderabad (HYD)', '1992-05-02', 'F'),
(5, 'Ankit',  'Kapoor',   'Admin',  'P2', 'Delhi (DEL)',      '1994-07-03', 'M');

-- EmployeePosition Table
CREATE TABLE EmployeePosition (
  EmpID INT,
  EmpPosition VARCHAR(50),
  DateOfJoining DATE,
  Salary INT,
  FOREIGN KEY (EmpID) REFERENCES EmployeeInfo(EmpID)
);

-- Insert EmployeePosition Data
INSERT INTO EmployeePosition (EmpID, EmpPosition, DateOfJoining, Salary) VALUES
(1, 'Manager',   '2022-05-01', 500000),
(2, 'Executive', '2022-05-02',  75000),
(3, 'Manager',   '2022-05-01',  90000),
(2, 'Lead',      '2022-05-02',  85000),
(1, 'Executive', '2022-05-01', 300000);
