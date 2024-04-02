USE employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis'
        AND last_name = 'Velasco'
        OR first_name = 'Chenye'
        AND last_name = 'Velasco';

-- Uso do comando IN
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Elvis' , 'Sumant', 'Berni', 'Lillian');

-- Uso do comando LIKE

SELECT 
    *
FROM
    employees
WHERE
	first_name
    LIKE 'Elv%' AND last_name LIKE '_e%';
    
-- trabalhando com datas

SELECT * FROM employees WHERE birth_date BETWEEN '1954-05-01' AND '1956-04-20';


