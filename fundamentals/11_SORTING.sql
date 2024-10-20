-- ordering by date
select * from employees order by hire_date DESC;
select * from employees order by hire_date asc;

-- multiple columns
select * from employees order by gender desc, hire_date asc;


-- ordering by a calculated column
select first_name, last_name from employees
order by length(first_name) desc, length(last_name) desc ;