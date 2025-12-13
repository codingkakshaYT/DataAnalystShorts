/*
product_id, product_name, price, quanity, sale_date

What is the total revenue generated across all 
products for the current month?
*/

select 
month(sale_date) as months,
YEAR(sale_date) as years,
sum(price*quantity) as revenue
from Products
where MONTH(sale_date) = MONTH(GETDATE())
group by month(sale_date),
YEAR(sale_date)--- solution for video
