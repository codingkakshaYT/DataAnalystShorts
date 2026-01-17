/*
You are given a table named orders. Write a 
query to calculate the Month-over-Month (MoM)
percentage growth in total sales.
*/

select * from  orders;

WITH Monthly_Totals AS (
SELECT 
datepart(YEAR,order_date) as years,
datepart(month,order_date) as months,
SUM(order_amount) AS current_month_sales
FROM orders
GROUP BY datepart(YEAR,order_date),
datepart(month,order_date) 
),
Sales_Comparison AS (
SELECT 
*,
LAG(current_month_sales) 
OVER (ORDER BY months) AS previous_month_sales
FROM Monthly_Totals
)
SELECT 
years,
months,
current_month_sales,
previous_month_sales,
ROUND(
(current_month_sales - previous_month_sales) 
/ previous_month_sales * 100, 
2
) AS mom_growth_percentage
FROM Sales_Comparison;





