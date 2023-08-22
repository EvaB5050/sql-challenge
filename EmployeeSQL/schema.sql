-- Create tables with column names to import data from csv files
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);


CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10) REFERENCES titles(title_id),
	birth_date VARCHAR(15) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date VARCHAR(15) NOT NULL
);


CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50)
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(10)	REFERENCES departments(dept_no),
	emp_no INT NOT NULL
);


CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
	dept_no VARCHAR(10) REFERENCES departments(dept_no) 
);


CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary INT NOT NULL
);

