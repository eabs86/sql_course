USE employees;

SELECT
	*
FROM 
	employees
WHERE 
	emp_no NOT IN(SELECT emp_no FROM titles WHERE to_date = '9999-01-01');
    
SELECT
	*
FROM
	employees as emp
LEFT JOIN
	titles as t
ON 
	emp.emp_no = t.emp_no AND
	t.to_date = '9999-01-01'
WHERE
	t.emp_no IS NULL;