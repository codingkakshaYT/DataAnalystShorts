use codingkaksha_youtube
/*
Find customers whose average order value is greater than the overall average order value across all customers
orders(order_id, customer_id, order_date)
order_items(order_id, product_id, quantity, price)
*/

drop table if exists orders;
CREATE TABLE orders (
    order_id     INT PRIMARY KEY,
    customer_id  INT NOT NULL,
    order_date   DATE NOT NULL
);

drop table if exists order_items;
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id      INT NOT NULL,
    product_id    INT NOT NULL,
    quantity      INT NOT NULL,
    price         DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);


INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 101, '2024-01-05'),
(2, 101, '2024-01-18'),
(3, 102, '2024-01-10'),
(4, 102, '2024-02-02'),
(5, 103, '2024-02-07'),
(6, 104, '2024-02-12'),
(7, 104, '2024-02-25'),
(8, 105, '2024-03-01'),
(9, 106, '2024-03-04'),
(10, 107, '2024-03-08'),
(11, 108, '2024-03-10'),
(12, 109, '2024-03-12');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 201, 2, 50.00),
(2, 1, 202, 1, 120.00),

(3, 2, 203, 3, 30.00),
(4, 2, 201, 1, 50.00),
(5, 2, 204, 2, 25.00),

(6, 3, 202, 1, 120.00),
(7, 3, 205, 2, 80.00),

(8, 4, 201, 4, 50.00),
(9, 4, 203, 1, 30.00),

(10, 5, 204, 3, 25.00),
(11, 5, 205, 1, 80.00),

(12, 6, 202, 2, 120.00),
(13, 6, 203, 2, 30.00),

(14, 7, 201, 1, 50.00),
(15, 7, 204, 4, 25.00),
(16, 7, 205, 1, 80.00),

(17, 8, 202, 1, 120.00),
(18, 8, 203, 3, 30.00),

(19, 9, 204, 2, 25.00),
(20, 9, 201, 2, 50.00),

(21, 10, 205, 2, 80.00),

(22, 11, 201, 3, 50.00),
(23, 11, 202, 1, 120.00),

(24, 12, 203, 4, 30.00),
(25, 12, 204, 2, 25.00),
(26, 12, 205, 1, 80.00);


---soln

WITH order_totals AS (
SELECT
order_id,
SUM(quantity * price) AS order_value
FROM order_items
GROUP BY order_id
)
, customer_avg AS (
SELECT
o.customer_id,
AVG(ot.order_value) AS avg_order_value
FROM orders o
JOIN order_totals ot
ON o.order_id = ot.order_id
GROUP BY o.customer_id
)
,
overall_avg as(
select 
avg(order_value) as overall_avg_order_value
from order_totals
)

SELECT
c.customer_id,
c.avg_order_value
FROM customer_avg c
CROSS JOIN overall_avg o
WHERE c.avg_order_value > o.overall_avg_order_value;
