
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  EmpSup INTEGER NOT NULL,
  ProgPerc INTEGER NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales', '10', '15');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting', '15', '30');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales', '25', '45');
INSERT INTO EMPLOYEE VALUES (0004, 'John', 'Engineering', '10', '70');
INSERT INTO EMPLOYEE VALUES (0005, 'Nancy', 'Marketing', '30', '55');
INSERT INTO EMPLOYEE VALUES (0006, 'Tom', 'Finance', '60', '60');
INSERT INTO EMPLOYEE VALUES (0007, 'July', 'Engineering', '5', '75');

-- select
SELECT * FROM EMPLOYEE;
SELECT COUNT(*) FROM EMPLOYEE;
SELECT COUNT(dept) FROM EMPLOYEE;
SELECT COUNT(name) FROM EMPLOYEE;
SELECT name FROM EMPLOYEE;
SELECT empID, dept FROM EMPLOYEE WHERE empID = '0005';
SELECT dept, COUNT(*) FROM EMPLOYEE GROUP BY dept;
SELECT dept, COUNT(*) FROM EMPLOYEE GROUP BY dept HAVING COUNT(*) > 1;
SELECT empID, name, dept FROM EMPLOYEE ORDER BY empID;
SELECT empID, name, dept FROM EMPLOYEE WHERE name = 'John';
SELECT dept FROM EMPLOYEE WHERE name = 'Clark' order by dept;
SELECT empID FROM EMPLOYEE WHERE name = 'Ava' order by dept;
SELECT name, empID as "Employee Identification Number" from EMPLOYEE;
SELECT name, dept, empID as "Employee Identification Number" from EMPLOYEE ORDER BY empID DESC;
SELECT name, dept, empID, EmpSup as "Employees Supervised" from EMPLOYEE where EmpSup > 10 ORDER BY empID DESC;
SELECT name, dept, empID, EmpSup as "Employees Supervised" from EMPLOYEE where EmpSup > 10 AND ProgPerc < 10 ORDER BY empID DESC;
SELECT name, dept, empID from EMPLOYEE where name = 'Nancy';
SELECT name, dept, empID, EmpSup+5, ProgPerc-10 from EMPLOYEE;
SELECT name, dept, empID, EmpSup+5, ProgPerc-10 from EMPLOYEE where dept ='Engineering';


-- describe
describe EMPLOYEE;

-- show
SHOW DATABASES;

-- fetch 
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';
SELECT * FROM EMPLOYEE WHERE name = 'John';

-- SHOW
SHOW COLUMNS from EMPLOYEE;

-- functions(sum,avg,count,min,max)
SELECT CURRENT_DATE();
SELECT SUM(ProgPerc) AS 'Total Progress Percentages' FROM EMPLOYEE;
SELECT avg(EmpSup) AS 'Average Employees Supervised' FROM EMPLOYEE;
SELECT max(ProgPerc) AS 'Maximum Progress Percentage' FROM EMPLOYEE;
SELECT COUNT(DISTINCT empID) AS 'Unique_Employee_Identification' FROM EMPLOYEE;
SELECT CHAR_LENGTH('Progress Percentage');
SELECT name, empID, RTRIM(dept) AS 'Department' FROM EMPLOYEE;
SELECT name, substring_index(name, " ", 1) FROM EMPLOYEE;
SELECT sum(ProgPerc), avg(ProgPerc), max(ProgPerc), min(ProgPerc), count(ProgPerc) FROM EMPLOYEE;
SELECT name FROM EMPLOYEE WHERE LENGTH(TRIM(name)) < 5;
SELECT dept FROM EMPLOYEE WHERE LENGTH(TRIM(dept)) < 5;