-- Q1: Fetch EmpFname in uppercase, alias as EmpName
SELECT UPPER(EmpFname) AS EmpName
FROM EmployeeInfo;

-- Q2: Number of employees in HR
SELECT COUNT(*) AS HR_Count
FROM EmployeeInfo
WHERE Department = 'HR';

-- Q3: Current date
SELECT CURDATE() AS Today;   -- or SELECT NOW(); 

-- Q4: First 4 characters of EmpLname
SELECT LEFT(EmpLname, 4) AS EmpLname_First4
FROM EmployeeInfo;

-- Q5: Place name before brackets in Address
SELECT TRIM(SUBSTRING_INDEX(Address, '(', 1)) AS PlaceName
FROM EmployeeInfo;

-- Q6: Create new table with structure + data from EmployeeInfo
CREATE TABLE EmployeeInfo_Copy AS
SELECT * FROM EmployeeInfo;

-- Q7: Employees with salary between 50,000 and 100,000
SELECT e.EmpFname, e.EmpLname, p.Salary
FROM EmployeeInfo e
JOIN EmployeePosition p ON e.EmpID = p.EmpID
WHERE p.Salary BETWEEN 50000 AND 100000;

-- Q8: Employees whose names begin with 'S'
SELECT EmpFname, EmpLname
FROM EmployeeInfo
WHERE EmpFname LIKE 'S%';

-- Q9: Top N records 
SELECT * 
FROM EmployeeInfo
LIMIT 3;

-- Q10: Full name as one column
SELECT CONCAT(EmpFname, ' ', EmpLname) AS FullName
FROM EmployeeInfo;
