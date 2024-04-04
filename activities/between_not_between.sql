USE employees;

SELECT * from salaries;

SELECT * from salaries WHERE salary >= 66074 AND salary <= 71046;

SELECT count(*) from salaries WHERE salary >= 66074 AND salary <= 71046;

SELECT * from salaries WHERE salary BETWEEN 66074 AND 71046;

SELECT count(*) from salaries WHERE salary BETWEEN 66074 AND 71046;


-- pode ser usado com datas
SELECT * from employees WHERE birth_date BETWEEN '1954-05-01' AND '1956-04-20';

SELECT * from employees WHERE birth_date NOT BETWEEN '1954-05-01' AND '1956-04-20';


