USE employees;


SELECT * FROM employees WHERE first_name = 'Elvis';

SELECT * FROM employees WHERE first_name IN ('Elvis'); -- funciona da mesma maneira que a query anterior

SELECT * FROM employees WHERE first_name IN ('Elvis', 'Sumant','Berni','Lillian');

SELECT count(*) FROM employees WHERE first_name IN ('Elvis', 'Sumant','Berni','Lillian');

SELECT count(*) FROM employees WHERE first_name IN ('Elvis', 'Sumant','Berni','Lillian')
AND last_name NOT IN ('Redmiles','Feldhoffer','Androutsos','Schaar');

SELECT *  FROM employees WHERE first_name IN ('Elvis', 'Sumant','Berni','Lillian')
AND last_name NOT IN ('Redmiles','Feldhoffer','Androutsos','Schaar');