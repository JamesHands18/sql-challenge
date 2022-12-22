CREATE TABLE deptartments(
	dept_id VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

CREATE TABLE employees(
	emp_id INTEGER PRIMARY KEY,
	title_id VARCHAR NOT NULL,
	FOREIGN KEY (title_id) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE dept_emp(
	emp_id INTEGER NOT NULL,
	dept_id VARCHAR NOT NULL,
	FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
	FOREIGN KEY (dept_id) REFERENCES deptartments(dept_id)
);

CREATE TABLE dept_manager(
	dept_id VARCHAR NOT NULL,
	emp_id INTEGER NOT NULL,
	FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
	FOREIGN KEY (dept_id) REFERENCES deptartments(dept_id)
);

CREATE TABLE salaries(
	emp_id INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);