USE employees;

SELECT DISTINCT first_name FROM employees; -- verifica quantos nomes únicos tem na tabela

SELECT count(DISTINCT first_name) FROM employees;

SELECT DISTINCT birth_date FROM employees;