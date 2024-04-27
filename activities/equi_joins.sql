USE employees;


-- equi-join funciona no SQL, porém não funciona em todo database
SELECT 
	dept_name, first_name, last_name, title
FROM
	employees AS emp,
	dept_emp AS de,
	departments AS dept,
	titles AS t
WHERE
	emp.emp_no = de.emp_no AND -- esquecer um cláusula pode levar a resultados bizarros
    de.dept_no = dept.dept_no AND
    t.emp_no = emp.emp_no AND
	de.to_date = '9999-01-01' AND
    t.to_date = '9999-01-01'
ORDER BY dept_name, last_name;