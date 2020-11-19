--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, last_name,first_name,sex, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no, first_name, last_name, hire_date 
FROM employees WHERE hire_date BETWEEN DATE'1986-01-01' AND DATE'1986-12-31'
ORDER by hire_date ASC;

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no,dept_name,dept_managers.emp_no,employees.first_name, employees.last_name
FROM departments
JOIN dept_managers ON departments.dept_no = dept_managers.dept_no
LEFT JOIN employees ON dept_managers.emp_no = employees.emp_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name,first_name,departments.dept_name
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no;
