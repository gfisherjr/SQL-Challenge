--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT de.emp_no,
	de.last_name,
	de.first_name,
	de.gender,
	ds.salary
FROM data_employees AS de
INNER JOIN data_salaries ds ON de.emp_no = ds.emp_no
/*
WHERE dept_emp.emp_no IN (
	SELECT emp_no
	FROM dept_emp
	WHERE to_date = '9999-01-01'
)
*/
ORDER BY "emp_no";

--List employees who were hired in 1986.
SELECT * FROM data_employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01'
ORDER BY "emp_no";

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	data_employees.last_name,
	data_employees.first_name,
	dept_manager.from_date,
	dept_manager.to_date
FROM dept_manager
INNER JOIN departments on dept_manager.dept_no = departments.dept_no
INNER JOIN data_employees on dept_manager.emp_no = data_employees.emp_no
ORDER BY "emp_no";
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
	data_employees.last_name,
	data_employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
INNER JOIN data_employees on data_employees.emp_no = dept_emp.emp_no
/*
WHERE dept_emp.to_date = '9999-01-01'
*/
ORDER BY "emp_no";

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT data_employees.emp_no,
	data_employees.first_name,
	data_employees.last_name
FROM data_employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
	data_employees.last_name,
	data_employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN data_employees ON data_employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007'
ORDER BY "emp_no";

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
	data_employees.last_name,
	data_employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN data_employees ON data_employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007'
OR departments.dept_no = 'd005'
ORDER BY "emp_no";

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS last_name_count
FROM data_employees
GROUP BY last_name
ORDER BY last_name_count;

SELECT * FROM data_employees
WHERE emp_no = 499942;


