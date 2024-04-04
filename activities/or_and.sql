USE employees;

SELECT * FROM employees WHERE first_name = 'Elvis';

SELECT * FROM employees WHERE first_name = 'Elvis' AND GENDER ='F';

SELECT count(*) FROM employees WHERE first_name = 'Elvis' AND GENDER ='F';

SELECT * FROM employees WHERE first_name = 'Elvis' AND last_name ='Velasco';

SELECT * FROM employees WHERE first_name = 'Elvis' OR last_name ='Velasco';

SELECT * FROM employees WHERE (first_name = 'Elvis' AND last_name ='Velasco')
OR (first_name = 'Chenye' AND last_name ='Velasco');