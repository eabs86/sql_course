USE employees;

SELECT * FROM employees;

SELECT * FROM employees where first_name LIKE 'E%';

SELECT * FROM employees where first_name LIKE 'Elv%' AND last_name like '_e%';

SELECT * FROM employees where first_name LIKE 'Elv%' AND last_name like '_e%'
AND last_name NOT LIKE "%n";