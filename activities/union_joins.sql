USE employees;

SELECT 
	dept_name, emp.emp_no, first_name,last_name, 'Manager' as emp_type
FROM
	employees AS emp
INNER JOIN
	dept_manager AS dm
    ON emp.emp_no = dm.emp_no
JOIN
	departments AS dept
	ON dm.dept_no = dept.dept_no
WHERE
	dm.to_date='9999-01-01'
-- Each SELECT statement within the UNION must have the same number of columns in the result sets with similar data types, 
-- and the columns must also be in the same order.
UNION 
SELECT 
	dept_name, emp.emp_no,first_name, last_name, 'Staff' as emp_type
FROM
	employees AS emp
JOIN
	dept_emp AS de ON emp.emp_no = de.emp_no
JOIN
	departments AS dept ON de.dept_no = dept.dept_no
JOIN
	titles AS t ON t.emp_no = emp.emp_no
WHERE 
	de.to_date = '9999-01-01' AND
    t.to_date = '9999-01-01'
ORDER BY emp_type,dept_name, last_name;
    