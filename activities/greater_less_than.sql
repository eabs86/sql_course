USE employees;

SELECT * FROM salaries;

SELECT count(*) FROM salaries;

SELECT * FROM salaries WHERE salary > 66961;

SELECT count(*) FROM salaries WHERE salary > 66961;

SELECT count(*) FROM salaries WHERE salary < 66961;

SELECT count(*) FROM salaries WHERE salary > 66961 AND from_date > '1986-06-25';

