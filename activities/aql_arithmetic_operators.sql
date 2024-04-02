USE employees;
/* 
Operators:
(order of precedence = 1)
* = multiply 
/ = divide
DIV = integer division
% = module

(order of precedence = 2)
+ = add
- = subtract

*/

SELECT salary,
	salary * .01 as weekly,
    salary * 0.01 * 4 as monthly,
    salary * 0.01 * 52 as yearly,
    salary + 200 * 0.01 as multiply_first,
    (salary + 200) * 0.1 as add_first,
    salary * 0.01/7 as daily,
    salary DIV 3 as div_op,
    salary % 3 as mod_op
FROM 
	salaries;



