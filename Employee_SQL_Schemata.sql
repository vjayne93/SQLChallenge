CREATE TABLE titles (
    title_id VARCHAR(15) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
	emp_no VARCHAR (15) PRIMARY KEY,
	emp_title_id VARCHAR (15) references titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR (45),
	last_name VARCHAR (45),
	sex varchar(1),
	hire_date DATE NOT NULL
);

CREATE TABLE departments (
	dept_no varchar(15) PRIMARY KEY,
	dept_name varchar(30)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR (15) references employees(emp_no),
	dept_no VARCHAR (15) references departments(dept_no)
);
CREATE TABLE dept_manager (
	dept_no VARCHAR (15) references departments(dept_no),
	emp_no varchar(15)
);
CREATE TABLE salaries (
    emp_no VARCHAR(15),
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
