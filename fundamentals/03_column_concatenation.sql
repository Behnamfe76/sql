-- CONCATENATING FIRST NAME AND LAST NAME 
SELECT emp_no AS "ID", CONCAT(first_name, ' ', last_name) AS "FULL_NAME" FROM "employees";