CREATE TABLE Departments(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(100) UNIQUE NOT NULL,
Location VARCHAR(100)
);

CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(100) UNIQUE,
Phone CHAR(10),
Salary DECIMAL(10,2) CHECK (Salary > 0),
HireDate DATE,
Gender CHAR(1) CHECK (Gender IN ('M','F')),
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments VALUES
(001,'SE','Banaras'),
(002,'CSE','Kolkata');

INSERT INTO Employees VALUES
(100,'Amit','Mandal','amitmandal@gmail.com','1234567890',
60000,'2024-06-01','M',001),
(101,'Asmit','Giri','asmitgiri@gmail.com','1234567890',
65000,'2024-06-01','M',002);

SELECT * FROM Departments;

SELECT * FROM Employees;

SELECT FirstName FROM Employees;

SELECT * FROM Employees;

SELECT * FROM Employees WHERE Salary > 40000;

UPDATE Employees SET Salary = 60000 WHERE DepartmentID = 001;

SELECT * FROM Employees;

UPDATE Employees SET Salary = 62000 WHERE DepartmentID = 002;

SELECT * FROM Employees;

UPDATE Employees SET Email='amitmandal@example.com'
WHERE DepartmentID = 002;

SELECT * FROM Employees;

ALTER TABLE Departments ADD ManagerName VARCHAR(100);

DESC Departments;

ALTER TABLE Employees MODIFY Salary DECIMAL(12,2);

ALTER TABLE Departments RENAME COLUMN DepartmentName TO Name;

SELECT * FROM Employees WHERE EmployeeID=101;

SELECT * FROM Employees;

TRUNCATE TABLE Employees;

DROP TABLE Employees;
