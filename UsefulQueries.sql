-- Get all employees with their job titles & departments:

SELECT e.FirstName, e.LastName, j.JobTitle, d.DepartmentName
FROM Employees e
JOIN Jobs j ON e.JobID = j.JobID
JOIN Departments d ON e.DepartmentID = d.DepartmentID;


-- Find employees who worked overtime:
SELECT e.FirstName, e.LastName, p.HoursWorked, p.OvertimeHours
FROM Payroll p
JOIN Employees e ON p.EmployeeID = e.EmployeeID
WHERE p.OvertimeHours > 0;

--Check vacation requests pending approval:
SELECT e.FirstName, e.LastName, v.StartDate, v.EndDate
FROM Vacations v
JOIN Employees e ON v.EmployeeID = e.EmployeeID
WHERE v.Status = 'Pending';

--Calculate total salary with overtime:
SELECT e.FirstName, e.LastName, 
       p.BaseSalary + (p.OvertimeHours * j.OvertimeRate) - p.Deductions AS FinalSalary
FROM Payroll p
JOIN Employees e ON p.EmployeeID = e.EmployeeID
JOIN Jobs j ON e.JobID = j.JobID;

--Find employees who worked fewer than 8 hours per day:
SELECT e.FirstName, e.LastName, a.Date, a.TotalHoursWorked
FROM Attendance a
JOIN Employees e ON a.EmployeeID = e.EmployeeID
WHERE a.TotalHoursWorked < 8;

