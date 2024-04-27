USE employees;

SELECT
	*
FROM
	employees
WHERE
	emp_no NOT IN (SELECT emp_no FROM dept_manager);
    
SELECT
	*
FROM
	employees as emp
LEFT JOIN dept_manager as dm
ON emp.emp_no = dm.emp_no;

SELECT
	emp.emp_no, dm.emp_no, first_name, last_name
FROM
	employees as emp
LEFT JOIN dept_manager as dm
ON emp.emp_no = dm.emp_no;

SELECT
	emp.emp_no, dm.emp_no, first_name, last_name
FROM
	employees as emp
LEFT JOIN dept_manager as dm
ON 
	emp.emp_no = dm.emp_no
WHERE
	dm.emp_no IS NULL;
