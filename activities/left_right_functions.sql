USE employees;

SELECT RIGHT('asdf',1); -- retorna o último elemento
SELECT RIGHT('asdf',2); -- retorna os 2 últimos elementos
SELECT RIGHT('asdf',3); -- retorna os 3 últimos elementos

SELECT LEFT('asdf',1); -- retorna o primeiro elemento

SELECT * FROM employees;

SELECT 
    first_name,
    last_name,
    CONCAT(LEFT(first_name, 1),
            '.',
            LEFT(last_name, 1)) AS initials
FROM
    employees;


