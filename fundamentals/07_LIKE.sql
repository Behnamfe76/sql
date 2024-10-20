-- looking for something regarding the case sensitive character it
-- This is not in the SQL standard but is a PostgreSQL extension. In MySQL you do 
-- SELECT * FROM employees WHERE first_name ILIKE 'georgi%';

-- looking for something regarding the case sensitive character it
SELECT * from employees WHERE LOWER(column_name) LIKE LOWER('%test%');

-- exactly looking for something
SELECT * FROM employees WHERE first_name LIKE 'Georgi';

-- looking for something that starts with 'Ge'
SELECT * FROM employees WHERE first_name LIKE 'Ge%';

-- looking for something that ends with 'i'
SELECT * FROM employees WHERE first_name LIKE '%i';

-- looking for something that contains 'ei'
SELECT * FROM employees WHERE first_name LIKE '%ei%';

-- looking for something that starts with 'Ge' and ends with 'i'
SELECT * FROM employees WHERE first_name LIKE 'Ge%i';

-- looking for something that starts with 'Ge' and contains 'ei' somewhere within it
SELECT * FROM employees WHERE first_name LIKE '%Ge%ei%';

-- fields that have 2 zero's as second and third character and anything after
select * FROM employees WHERE first_name LIKE '_00%';

-- finds any values that starts with b and are at least 3 characters in length
SELECT * FROM employees WHERE first_name LIKE 'b_%_%';

-- finds any values that starts with b and ends in m and are 6 characters in length
SELECT * FROM employees WHERE first_name LIKE 'b____m';

