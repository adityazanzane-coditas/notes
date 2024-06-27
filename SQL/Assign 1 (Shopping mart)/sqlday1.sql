CREATE DATABASE employee_mgt;
-- drop database employee_mgt;
-- alter database employee_mgt rename to employee_management;

USE employee_mgt;

CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2)
);

CREATE TABLE departments (
	department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO employees(employee_id, employee_name, department_id)
values (2, 'Ramesh Jha', 1),
(3, 'Suresh', 1);

UPDATE employees
SET salary=50000;


INSERT INTO employees VALUES(1, 'John Doe', 1, 60000);
INSERT INTO employees VALUES(2, 'Jane Seith', 2, 75000);

DELETE from employees where employee_id=2;

ALTER TABLE employees
modify column is_permanent varchar(20)