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

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex  FROM employees WHERE first_name ='Hercules' AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name, first_name, departments.dept_name 
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name, first_name, departments.dept_name 
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales','Development');

--8.1 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(*) AS frequency FROM employees GROUP BY last_name  ORDER BY frequency DESC;

--8.2In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(*)  FROM employees GROUP BY last_name  ORDER BY last_name DESC;




