/*
---Cumulative sales
Write a SQL query to retrieve each record along with
a new column total_units_sold that represents the 
running total of units sold for each product up to and 
including the current date. The results should be ordered 
first by item_name and then by sale_date
*/

select *,
sum(units_sold) over(partition by item_name
order by sale_date) as total_units_sold
from sales_records
order by item_name, total_units_sold asc



