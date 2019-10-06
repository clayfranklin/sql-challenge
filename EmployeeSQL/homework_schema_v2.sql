/*
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE titles;
DROP TABLE salaries;
*/

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  birth_date DATE NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  gender character varying(5) NOT NULL,
  hire_date DATE NOT NULL
);

CREATE TABLE departments (
  dept_no VARCHAR (30) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR (30) NOT NULL,
  emp_no INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR (30) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
  emp_no INT NOT NULL,
  title VARCHAR (255) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



