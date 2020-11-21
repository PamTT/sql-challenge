-- Create a departments table
DROP TABLE departments;
CREATE TABLE departments (
 	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
 	dept_name VARCHAR (30) NOT NULL);		

-- Create a employees table
DROP TABLE employees;
CREATE TABLE employees (
 	emp_no INT NOT NULL PRIMARY KEY,
  	emp_title_id VARCHAR (30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(7),
	hire_date DATE );	

-- Create a dept_emp table
DROP TABLE dept_emp;
CREATE TABLE dept_emp (
 	emp_no INT NOT NULL,
	dept_no VARCHAR (30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));
	
-- Create a dept_managers table
DROP TABLE dept_managers;
CREATE TABLE dept_managers (
 	dept_no VARCHAR (30) NOT NULL,
 	emp_no INT);

-- Create a salaries table-5
DROP TABLE salaries;
CREATE TABLE salaries (
  	emp_no INT NOT NULL,
  	salary INT NOT NULL);

-- Create a titles table-6
DROP TABLE titles;
CREATE TABLE titles (
  	title_id VARCHAR NOT NULL,
  	title VARCHAR NOT NULL);

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_managers;
SELECT * FROM salaries;
SELECT * FROM titles;


