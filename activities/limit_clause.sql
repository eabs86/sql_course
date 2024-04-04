use employees;

SELECT * from employees; -- por padrão é LIMIT 0,1000. O 0 é um offset

SELECT count(*) from employees;

SELECT * from employees LIMIT 20; -- pode ser 0,20 ou 20. Não informar o offset é dizer que é igual a zero

SELECT * from employees LIMIT 5,20; -- começa do 5º elemento e retorna 20 elementos a partir dele

SELECT * from employees ORDER BY emp_no LIMIT 20;


SELECT * from employees ORDER BY emp_no LIMIT 19,20;