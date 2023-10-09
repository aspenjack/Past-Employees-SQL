CREATE TABLE titles (
	emp_title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (emp_title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE department_employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE department_managers (
	dept_no VARCHAR,
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);


