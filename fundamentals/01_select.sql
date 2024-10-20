-- analyzing the query performance
EXPLAIN ANALYZE

-- a simple select query
SELECT * FROM "users";


SELECT * FROM "users" WHERE ROLE = "admin";

-- A LIST OF EMPLOYEES OF THE COMPANY
SELECT * FROM "employees";

-- HOW MANY DEPARTMENTS ARE THERE IN THE COMPANY
SELECT COUNT(*) FROM "departments";

-- HOW MANY TIMES HAS EMPLOYEE 10001 HAD A RAISE?
SELECT COUNT(*) FROM "salaries" WHERE emp_no = 10001;

-- WHAT TITLE DOES EMPLOYEE 10006 HAVE?
SELECT "title" FROM "titles" WHERE emp_no = 10006;