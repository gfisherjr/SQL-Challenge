--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT data_employees.emp_no,
	data_employees.last_name,
	data_employees.first_name,
	data_employees.gender,
	data_salaries.salary
FROM data_employees
INNER JOIN data_salaries 
ON data_employees.emp_no = data_salaries.emp_no
ORDER BY "emp_no";

--List employees who were hired in 1986.
SELECT * FROM data_employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01'
ORDER BY "emp_no";

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
	