-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986'
AND hire_date < '01/01/1987';


-- 3. List the manager of each department with dept number, dept name, manager emp number, last name, and first name
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

-- 4. List the department that each employee is in with employee number, last name, first name, and department name
SELECT departments.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no;

-- 5. List first name, last name, and sex for every employee whose first name is 'Hercules' and last name starts with 'B'
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the 'Sales' department with their employee ID, first name, last name, and department name
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

-- 7. List all employees in the 'Sales' and 'Department' department with their employee ID, first name, last name, and department name
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- 8. Count the frequency of each last name and put in descending order
SELECT last_name, COUNT(last_name) AS frequency 
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
