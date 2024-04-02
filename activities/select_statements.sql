USE employees;

SELECT
	emp_no, COUNT(*) as emp_count
FROM
	employees
WHERE
	emp_no > 1 -- conditions to select data
GROUP BY emp_no -- How to group data
HAVING emp_count > 0 -- conditions for aggregate functions
ORDER BY emp_no -- How to order data
LIMIT 5, 10; -- limit result set returned