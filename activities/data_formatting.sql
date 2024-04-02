USE employees;

SELECT * FROM salaries;

SELECT date_format("2017-06-15","%M %d %Y");

SELECT 
    from_date AS original_date,
    DATE_FORMAT(from_date, '%M %d %Y') AS full_month,
    DATE_FORMAT(from_date, '%m %d %Y') AS number_month,
    DATE_FORMAT(from_date, '%m %D %Y') AS ordinal_day,
    DATE_FORMAT(from_date, '%m-%d-%Y') AS dashed_date
FROM
    salaries;