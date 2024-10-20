-- GET A LIST OF ALL FEMALE EMPLOYEES
SELECT * FROM employees WHERE gender = 'F';


-- KEYWORDS ==> AND, OR
SELECT * FROM employees WHERE first_name = 'Bezalel' AND last_name = 'Simmel';
SELECT * FROM employees WHERE first_name = 'Bezalel' OR last_name = 'Simmel';

-- HOW MANY FEMALE CUSTOMERS DO WE HAVE FROM THE STATE OF OREGON (OR) AND THE STATE OF NEW YORK (NY)
SELECT gender, state FROM customers WHERE gender = 'F' AND state = 'OR' OR gender = 'F' AND state = 'NY';
SELECT  gender, state from customers where (state = 'OR' OR state = 'NY') and gender = 'F';

-- NOT KEYWORD
select * from customers WHERE not gender = 'M';
select * from customers WHERE NOT age = 55;


-- BETWEEN OPERATOR
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 100000;


-- COMPARISON OPERATORS
-- EQUAL (=)
SELECT * FROM employees WHERE salary = 50000;

-- NOT EQUAL (!=)
SELECT * FROM employees WHERE salary != 50000;
SELECT * FROM employees WHERE salary <> 50000;

-- LESS THAN (<)
SELECT * FROM employees WHERE salary < 50000;

-- GREATER THAN (>)
SELECT * FROM employees WHERE salary > 50000;

-- GREATER THAN AND EQUAL(>=)
SELECT * FROM employees WHERE salary >= 50000;

-- LESS THAN OR EQUAL TO (<=)
SELECT * FROM employees WHERE salary <= 50000;


-- IS KEYWORD
SELECT * FROM customers WHERE STATE IS NOT NULL;
SELECT * FROM customers WHERE STATE IS NULL;

-- IN KEYWORD
SELECT * FROM customers WHERE country IN ('UK', 'US', 'FRANCE');