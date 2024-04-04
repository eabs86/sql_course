USE employees;

SELECT * FROM salaries;

SELECT * FROM salaries ORDER BY salary; -- por default é ascending

SELECT * FROM salaries ORDER BY salary DESC; -- descending

SELECT * FROM salaries ORDER BY from_date, salary DESC; -- descending

SELECT * FROM employees ORDER BY first_name;

SELECT * FROM employees WHERE first_name='Elvis' ORDER BY birth_date;


SELECT * FROM employees WHERE first_name='Elvis' ORDER BY gender DESC, birth_date DESC;
