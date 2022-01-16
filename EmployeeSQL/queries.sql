
-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
on e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name.

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
LEFT JOIN departments as d
on d.dept_no = dm.dept_no
LEFT JOIN employees as e
on dm.emp_no = e.emp_no;


-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT  e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
on de.emp_no = e.emp_no
LEFT JOIN departments as d
on d.dept_no = de.dept_no;



-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT  emp_no, last_name, sex FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
on e.emp_no = de.emp_no
LEFT JOIN departments as d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
on e.emp_no = de.emp_no
LEFT JOIN departments as d
on de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(*)
FROM employees 
GROUP BY last_name
ORDER BY last_name DESC;

