-- Create a departments table-1
CREATE TABLE departments (
 	dept_no VARCHAR(30) NOT NULL,
 	dept_name VARCHAR (30) NOT NULL
);
-- Create a dept_emp table-2
CREATE TABLE dept_emp (
 	emp_no INT NOT NULL,
	dept_no VARCHAR (30) NOT NULL
);
-- Create a dept_managers table-3
CREATE TABLE dept_managers (
 	dept_no VARCHAR (30) NOT NULL,
 	emp_no INT NOT NULL
);
-- Create a employees table-4
CREATE TABLE employees (
 	emp_no INT NOT NULL,
  	emp_title_id VARCHAR (30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(7),
	hire_date DATE 
);
-- Create a salaries table-5
CREATE TABLE salaries (
  	emp_no INT NOT NULL,
  	salary INT NOT NULL
);

-- Create a titles table-6
CREATE TABLE titles (
  	title_id VARCHAR NOT NULL,
  	title VARCHAR NOT NULL
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_managers;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
