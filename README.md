# sql-challenge
Background
I was tasked to analze employees data of the corporation from the 1980s and 1990s. There were six CSV files of the database of employees from that period.
In this assignment, I designed tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data using my knowlege in the following fields:
1) Data Modeling/Data Engineering
2) Data Analysis


Data Modeling/Data Engineering:
I utilized a tool from http://quickdatabasediagrams.com to inspect the csv fils and sketched out an ERD.

I used the information to create a table schema for each of the six CSV files. I made sure to specify data types, primary keys, foreign keys, and other constraints.

For the primary keys, I checked to see if the column was unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.  I made sure that the data were imported in the same order that the tables were created and account for the headers when importing to avoid errors.

Data Analysis
Once I had a complete database, the following areas were analyzed:


1) List the following details of each employee: employee number, last name, first name, sex, and salary.


2) List first name, last name, and hire date for employees who were hired in 1986.


3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


4)List the department of each employee with the following information: employee number, last name, first name, and department name.


5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


6) List all employees in the Sales department, including their employee number, last name, first name, and department name.


7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



9) Bonus (Optional)


9.1)Create a histogram to visualize the most common salary ranges for employees.


9.2)Create a bar chart of average salary by title.