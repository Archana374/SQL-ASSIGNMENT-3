##Create the Managers Table
USE Sales;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY AUTO_INCREMENT,
    First_name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age >= 0),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Department VARCHAR(255) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL);
    ##Insert 10 Rows into the Managers Table
    INSERT INTO Managers (First_name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
('Alice', 'Smith', '1985-06-15', 39, 'F', 'HR', 30000.00),
('Bob', 'Johnson', '1980-03-10', 44, 'M', 'Finance', 40000.00),
('Charlie', 'Brown', '1990-08-22', 34, 'M', 'IT', 28000.00),
('Diana', 'Prince', '1982-12-01', 41, 'F', 'IT', 27000.00),
('Eva', 'Adams', '1978-11-30', 45, 'F', 'Marketing', 32000.00),
('Frank', 'Miller', '1989-04-12', 35, 'M', 'IT', 26000.00),
('Grace', 'Davis', '1995-01-25', 29, 'F', 'HR', 23000.00),
('Hank', 'Wilson', '1987-05-05', 37, 'M', 'Finance', 35000.00),
('Ivy', 'Thomas', '1983-07-17', 41, 'F', 'Marketing', 34000.00),
('Jack', 'Taylor', '1992-09-29', 31, 'M', 'IT', 22000.00);
##Query to Retrieve Name and DOB of Manager with Manager_Id 1
SELECT First_name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;
##Query to Display Annual Income of All Managers
SELECT First_name, Last_Name, (Salary * 12) AS Annual_Income FROM Managers;
##Query to Display Records of All Managers Except ‘Aaliya’
SELECT * FROM Managers WHERE First_name != 'Aaliya';
##Query to Display Details of Managers in IT Earning More Than 25000 per Month
SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000;
## Query to Display Details of Managers with Salary Between 10000 and 35000
SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;

