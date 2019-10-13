SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.gender, 
	s.salary
FROM 
	salaries s
	JOIN employees e ON e.emp_no = s.emp_no
ORDER BY emp_no
;

SELECT 
	hire_date
FROM 
	employees 
WHERE 
	hire_date BETWEEN '1986-01-01' AND '1986-12-31'
;


SELECT
	d.dept_no,
	d.dept_name,
	e.emp_no, 
	e.last_name, 
	e.first_name,
	dm.from_date,
	dm.to_date
FROM 
	employees e
	JOIN dept_manager dm ON dm.emp_no = e.emp_no
	JOIN departments d ON dm.dept_no = d.dept_no
;

SELECT
  e.emp_no,
  e.last_name,
  e.first_name,
  d.dept_name
FROM
  departments d
  INNER JOIN dept_emp de ON de.dept_no = d.dept_no
  INNER JOIN employees e ON e.emp_no = de.emp_no
  ORDER BY emp_no
;

SELECT
	first_name, 
	last_name, 
	emp_no
FROM 
	employees
WHERE 
	first_name = 'Hercules' 
AND 
	last_name LIKE 'B%'
;

SELECT
  d.dept_name,
  e.emp_no,
  e.last_name,
  e.first_name
FROM
  departments d
  INNER JOIN dept_emp de ON de.dept_no = d.dept_no
  INNER JOIN employees e ON e.emp_no = de.emp_no
WHERE dept_name = 'Sales'
ORDER BY emp_no
;

SELECT
  d.dept_name,
  e.emp_no,
  e.last_name,
  e.first_name
FROM
  departments d
  INNER JOIN dept_emp de ON de.dept_no = d.dept_no
  INNER JOIN employees e ON e.emp_no = de.emp_no
WHERE dept_name = 'Development' OR dept_name = 'Sales'
ORDER BY emp_no;

SELECT 
	last_name, 
	COUNT(employees.last_name)
FROM 
	employees
WHERE last_name = last_name
GROUP BY last_name
ORDER BY COUNT DESC
;
		  