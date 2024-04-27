USE employees;

SELECT * FROM
	employees
INNER JOIN
	dept_manager
    ON employees.emp_no = dept_manager.emp_no;
    
SELECT * FROM
	employees
JOIN  -- inner é opcional
	dept_manager
    ON employees.emp_no = dept_manager.emp_no;

SELECT * FROM
	employees
INNER JOIN
	dept_manager
    ON employees.emp_no = dept_manager.emp_no
JOIN
	departments
	ON dept_manager.dept_no = departments.dept_no;
    
-- usando alias

SELECT * FROM
	employees emp
INNER JOIN
	dept_manager dm
    ON emp.emp_no = dm.emp_no
JOIN
	departments dept
	ON dm.dept_no = dept.dept_no;
    
-- usar o AS é opcional

SELECT * FROM
	employees AS emp
INNER JOIN
	dept_manager AS dm
    ON emp.emp_no = dm.emp_no
JOIN
	departments AS dept
	ON dm.dept_no = dept.dept_no;


-- limitando as colunas no inner join

SELECT dept_name, emp.emp_no, first_name,last_name FROM -- emp_no existem em várias tabelas, por isso é necessário especificar
	employees AS emp
INNER JOIN
	dept_manager AS dm
    ON emp.emp_no = dm.emp_no
JOIN
	departments AS dept
	ON dm.dept_no = dept.dept_no
ORDER BY
	dept_name,last_name;
    
-- usando o where clause com o INNER JOIN

SELECT dept_name, emp.emp_no, first_name,last_name FROM
	employees AS emp
INNER JOIN
	dept_manager AS dm
    ON emp.emp_no = dm.emp_no
JOIN
	departments AS dept
	ON dm.dept_no = dept.dept_no
WHERE
	dm.to_date='9999-01-01'
    AND emp.gender = 'F'
ORDER BY
	dept_name;
    

SELECT dept_name, emp.emp_no, first_name,last_name FROM
	employees AS emp
INNER JOIN
	dept_manager AS dm
    ON emp.emp_no = dm.emp_no
JOIN
	departments AS dept
	ON dm.dept_no = dept.dept_no
WHERE
	dm.to_date='9999-01-01'
    AND emp.gender = 'M'
ORDER BY
	dept_name;