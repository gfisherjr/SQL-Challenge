--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT de.emp_no,
	de.last_name,
	de.first_name,
	de.gender,
	ds.salary
FROM data_employees AS de
INNER JOIN data_salaries ds ON de.emp_no = ds.emp_no
ORDER BY "emp_no";

--List employees who were hired in 1986.
SELECT * FROM data_employees
WHERE hire_date >= '1986-01-01'
AND hire_date < '1987-01-01'
ORDER BY "emp_no";

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT dm.dept_no,
	d.dept_name,
	dm.emp_no,
	de.last_name,
	de.first_name,
	dm.from_date,
	dm.to_date
FROM dept_manager dm
INNER JOIN departments d on dm.dept_no = d.dept_no
INNER JOIN data_employees de on dm.emp_no = de.emp_no
ORDER BY "emp_no";
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.emp_no,
	data_employees.last_name,
	data_employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN departments on departments.dept_no = dept_emp.dept_no
INNER JOIN data_employees on data_employees.emp_no = dept_emp.emp_no
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

/*
--Employee 499942
SELECT * FROM data_employees
WHERE emp_no = 499942;
*/

