-- Create a new table for the departments
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);
SELECT * FROM departments;

-- Create a new table for department employees
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM dept_emp;

-- Create a new table for department managers
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);
SELECT * FROM dept_manager;

-- Create a new table for employees
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);
SELECT * FROM employees;

-- Create a new table for employee salaries
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	salary INT NOT NULL
);
SELECT * FROM salaries;

-- Create a new table for the job titles
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL
);
SELECT * FROM titles;
