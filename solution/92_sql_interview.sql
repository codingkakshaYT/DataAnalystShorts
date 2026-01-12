/*
You have an employees table. You need to flag
employees as 'Over-Budget' in the audit_status column,
but only if they work in a department where the total
salary spend exceeds 1,000,000
*/

CREATE TABLE employees_test (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    dept_id INT,
    audit_status VARCHAR(20) DEFAULT 'Normal'
);

INSERT INTO employees_test (emp_id, name, salary, dept_id, audit_status) VALUES
(1, 'Alice', 150000, 101, 'Normal'), (2, 'Bob', 160000, 101, 'Normal'),
(3, 'Charlie', 155000, 101, 'Normal'), (4, 'David', 140000, 101, 'Normal'),
(5, 'Eve', 165000, 101, 'Normal'), (6, 'Frank', 150000, 101, 'Normal'),
(7, 'Grace', 155000, 101, 'Normal'), (8, 'Heidi', 170000, 101, 'Normal'), -- Dept 101 Total: $1.245M
(9, 'Ivan', 80000, 102, 'Normal'), (10, 'Judy', 85000, 102, 'Normal'),
(11, 'Kevin', 75000, 102, 'Normal'), (12, 'Lana', 90000, 102, 'Normal'),
(13, 'Mallory', 82000, 102, 'Normal'), (14, 'Niaj', 88000, 102, 'Normal'),
(15, 'Oscar', 79000, 102, 'Normal'), (16, 'Peggy', 81000, 102, 'Normal'),
(17, 'Quinn', 84000, 102, 'Normal'), (18, 'Reed', 86000, 102, 'Normal'),
(19, 'Sybil', 80000, 102, 'Normal'), (20, 'Trent', 85000, 102, 'Normal'), -- Dept 102 Total: ~$995k
(21, 'Uma', 50000, 103, 'Normal'), (22, 'Victor', 55000, 103, 'Normal'),
(23, 'Walter', 52000, 103, 'Normal'), (24, 'Xenia', 58000, 103, 'Normal'),
(25, 'Yosef', 51000, 103, 'Normal'), (26, 'Zane', 54000, 103, 'Normal'),
(27, 'Amber', 53000, 103, 'Normal'), (28, 'Bruno', 57000, 103, 'Normal'),
(29, 'Cindy', 52000, 103, 'Normal'), (30, 'Derek', 56000, 103, 'Normal'); -- Dept 103 Total: ~$538k




select * from employees_test;

with dept_sum as (
select 
		dept_id,
		sum(salary) as total_dept_sal
	from employees_test
group by dept_id
	having sum(salary)>1000000
	)
	update  e
set	e.audit_status='Over-Budget'
from employees_test e
join dept_sum d
on e.dept_id = d.dept_id





