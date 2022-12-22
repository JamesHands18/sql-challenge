SELECT e.emp_id, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON
s.emp_id = e.emp_id;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT d.dept_id, d.dept_name, e.emp_id, e.last_name, e.first_name
FROM dept_manager as dm
INNER JOIN employees as e ON
dm.emp_id = e.emp_id
INNER JOIN deptartments as d ON
dm.dept_id = d.dept_id;

SELECT d.dept_id, e.emp_id, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN employees as e ON
de.emp_id = e.emp_id
INNER JOIN deptartments as d ON
de.dept_id = d.dept_id;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

SELECT e.emp_id, e.last_name, e.first_name
FROM dept_emp as de
INNER JOIN employees as e ON
de.emp_id = e.emp_id
INNER JOIN deptartments as d ON
de.dept_id = d.dept_id
WHERE d.dept_name LIKE 'Sales';

SELECT e.emp_id, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN employees as e ON
de.emp_id = e.emp_id
INNER JOIN deptartments as d ON
de.dept_id = d.dept_id
WHERE d.dept_name LIKE 'Sales'
OR d.dept_name LIKE 'Development';

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;