INSERT INTO Departments (DepartmentName, ManagerID) VALUES
('Human Resources', 1),
('IT', 2),
('Finance', 3);

INSERT INTO Jobs (JobTitle, Salary, OvertimeRate) VALUES
('Software Engineer', 70000, 25),
('HR Manager', 65000, 20),
('Accountant', 60000, 18);

INSERT INTO Employees (FirstName, LastName, Email, Phone, Address, DateOfBirth, HireDate, JobID, DepartmentID) VALUES
('Alice', 'Johnson', 'alice@email.com', '1234567890', '123 Main St', '1990-05-15', '2020-06-10', 1, 2),
('Bob', 'Smith', 'bob@email.com', '9876543210', '456 Elm St', '1988-07-20', '2018-03-22', 2, 1);

INSERT INTO Payroll (EmployeeID, BaseSalary, HoursWorked, OvertimeHours, Deductions, NetPay, PaymentDate) VALUES
(1, 70000, 160, 5, 200, 5000, '2025-01-30'),
(2, 65000, 160, 2, 100, 4800, '2025-01-30');

INSERT INTO Schedules (EmployeeID, ShiftStart, ShiftEnd, WorkDays) VALUES
(1, '09:00:00', '17:00:00', 'Monday-Friday'),
(2, '08:00:00', '16:00:00', 'Monday-Friday');

INSERT INTO Attendance (EmployeeID, Date, CheckInTime, CheckOutTime, TotalHoursWorked) VALUES
(1, '2025-01-15', '09:05:00', '17:10:00', 8.08),
(2, '2025-01-15', '08:00:00', '16:00:00', 8.00);

INSERT INTO Vacations (EmployeeID, StartDate, EndDate, Status) VALUES
(1, '2025-02-01', '2025-02-07', 'Approved'),
(2, '2025-03-10', '2025-03-15', 'Pending');
