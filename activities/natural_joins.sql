USE employees;

SELECT 
	dept_name, first_name, last_name, title
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
ORDER BY dept_name, last_name;

-- usando NATURAL JOIN
-- NATURAL JOIN automatically joins tables based on columns with the same names and compatible data types in both tables. 
-- There is no need to specify an ON clause because the join condition is implicitly based on the matching column names.
SELECT 
	dept_name, first_name, last_name, title
FROM
	employees AS emp
NATURAL JOIN
	dept_emp AS de
NATURAL JOIN
	departments AS dept
NATURAL JOIN
	titles AS t
WHERE 
	de.to_date = '9999-01-01' AND
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;

-- Restriction: NATURAL JOIN only performs equi-joins and only on columns that both tables share. 
-- It can be problematic if the tables have columns with the same name but unrelated data, or if schema changes add a column with the same name to both tables.