-- Create Schema for departments.csv
DROP TABLE departments;
DROP TABLE data_employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE data_salaries;
DROP TABLE data_titles;

--Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(5) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
SELECT * FROM departments;

COPY departments FROM 'C:\temp-data\hw\departments.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM departments;

--Create employees table
CREATE TABLE data_employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * FROM data_employees;

COPY data_employees FROM 'C:\temp-data\hw\data_employees.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM data_employees;

--Create dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES data_employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_emp;

COPY dept_emp FROM 'C:\temp-data\hw\dept_emp.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM dept_emp;

ALTER TABLE dept_emp ADD COLUMN id SERIAL PRIMARY KEY;
SELECT * FROM dept_emp;

--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES data_employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_manager;

COPY dept_manager FROM 'C:\temp-data\hw\dept_manager.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM dept_manager;

--Create salaries table
CREATE TABLE data_salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES data_employees(emp_no)
);
SELECT * FROM data_salaries;

COPY data_salaries FROM 'C:\temp-data\hw\data_salaries.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM data_salaries;

--Create titles table
CREATE TABLE data_titles (
	emp_no INT NOT NULL,
	title VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES data_employees(emp_no)
);
SELECT * FROM data_titles;

COPY data_titles FROM 'C:\temp-data\hw\data_titles.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM data_titles;

ALTER TABLE data_titles ADD COLUMN id SERIAL PRIMARY KEY;
SELECT * FROM data_titles;
