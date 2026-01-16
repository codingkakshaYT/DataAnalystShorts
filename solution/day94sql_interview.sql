/*Find the second order for every customer, 
but only if the category of that second order
is different from their very first order. */


select *
from orders;


WITH RankedOrders AS (
    SELECT customer_id, category,
	ROW_NUMBER() OVER(PARTITION BY
	customer_id ORDER BY order_date) as rn,

	LAG(category) OVER(PARTITION BY 
	customer_id ORDER BY order_date) as prev_cat
    FROM orders
)
SELECT customer_id, category as second_category,
prev_cat as first_category
FROM RankedOrders
WHERE rn = 2 AND category <> prev_cat;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    category VARCHAR(50)
);

INSERT INTO orders VALUES 
(1, 101, '2023-01-01', 'Electronics'), -- 101: 1st Order
(2, 101, '2023-01-05', 'Furniture'),   -- 101: 2nd Order (Different! KEEP)
(3, 102, '2023-01-02', 'Electronics'), -- 102: 1st Order
(4, 102, '2023-01-10', 'Electronics'), -- 102: 2nd Order (Same! DISCARD)
(5, 103, '2023-01-01', 'Home Decor'),  -- 103: 1st Order (No 2nd order! DISCARD)
(6, 104, '2023-01-01', 'Clothing'),    -- 104: 1st Order
(7, 104, '2023-01-02', 'Electronics'), -- 104: 2nd Order (Different! KEEP)
(8, 104, '2023-01-03', 'Electronics'); -- 104: 3rd Order (Ignore)


select * from drop Table orders
