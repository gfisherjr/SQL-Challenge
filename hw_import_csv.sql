COPY departments FROM 'C:\temp-data\hw\departments.csv' DELIMITER ',' CSV HEADER;
COPY data_employees FROM 'C:\temp-data\hw\data_employees.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'C:\temp-data\hw\dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'C:\temp-data\hw\dept_manager.csv' DELIMITER ',' CSV HEADER;
COPY data_salaries FROM 'C:\temp-data\hw\data_salaries.csv' DELIMITER ',' CSV HEADER;
COPY data_titles FROM 'C:\temp-data\hw\data_titles.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM departments;
SELECT * FROM data_employees;
SELECT * FROM dept_emp LIMIT 100;
SELECT * FROM dept_manager;
SELECT * FROM data_salaries;
SELECT * FROM data_titles LIMIT 100;
