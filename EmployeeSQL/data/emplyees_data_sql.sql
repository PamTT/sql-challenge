--1.List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, last_name,first_name,sex, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
