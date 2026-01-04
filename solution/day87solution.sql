/*
write and sql query to delete the duplicate
employee from the table and keep emplooye 
with lowest salary
*/

select * from employees
where first_name in(
select first_name from employees
group by first_name
having COUNT(*)>1
)
order by first_name

with tablea as (
select *,
ROW_NUMBER()over(partition by first_name,department_id
order by salary asc) as rn
from employees
) delete from tablea 
where rn >1
