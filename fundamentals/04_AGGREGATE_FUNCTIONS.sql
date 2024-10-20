-- GETTING THE AVERAGE SALARY
SELECT AVG(salary) AS "AVG_SALARY" FROM "salaries";

-- GETTING THE MAX SALARY
SELECT MAX(salary) AS "MAX_SALARY" FROM "salaries";

-- GETTING THE MIN SALARY
 SELECT MIN(salary) AS "MIN_SALARY" FROM "salaries";

-- GETTING THE SALARY COUNT
 SELECT COUNT(salary) AS "SALARY_COUNT" FROM "salaries";

 -- GETTING THE SALARY SUM
 SELECT SUM(salary) AS "SALARY_SUM" FROM "salaries";

 -- HOW MANY PEOPLE ARE WORKING IN OUR COMPANY
 SELECT COUNT(*) AS "EMPLOYEE_COUNT" FROM "employees";