-- selecting from employees and salaries
SELECT
a.emp_no as "ID",
CONCAT(a.first_name, ' ', a.last_name) as "NAME",
a.gender as "GENDER",
b.salary
from employees as a, salaries as b
where a.emp_no = b.emp_no
order by b.salary;


-- no JOIN
select 
a.emp_no,
CONCAT(a.first_name, ' ', a.last_name) as "name",
b.salary,
c.title,
c.from_date as "promoted on"
from employees as a, salaries as b, titles as c
where a.emp_no = b.emp_no and a.emp_no = c.emp_no
and c.from_date = (b.from_date + INTERVAL('2 days'))
order by a.emp_no asc, b.from_date desc;

-- inner joins
SELECT 
a.emp_no,
CONCAT(a.first_name, ' ', a.last_name) as "name",
b.salary,
c.title,
c.from_date as "promoted on"
from employees as a
inner join salaries as b on a.emp_no = b.emp_no
INNER join titles as c on c.emp_no = a.emp_no
and c.from_date = (b.from_date + INTERVAL('2 days'))
order by a.emp_no asc, b.from_date desc;


-- self JOIN
SELECT a.id, a.name as "employee", b.name as "supervisor"
from employees as a, employees as b
where a.supervisor_id = b.id;

-- outer JOIN
SELECT count(emp.emp_no) from employees as emp 
left join dept_manager as dep on emp.emp_no = dep.emp_no
where dep.emp_no is null;