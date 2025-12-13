CREATE TABLE Products (
    product_id INT  PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    sale_date DATE NOT NULL
);

--
INSERT INTO Sales (product_id, product_name, price, quanity, sale_date) VALUES
-- --- CURRENT MONTH (December 2025) Data - Focus for the Query ---
(101, 'Deluxe Coffee Maker', 120, 1, '2025-12-01'),
(102, 'Bluetooth Speaker', 80, 3, '2025-12-01'),
(103, 'Ergonomic Mouse', 25, 10, '2025-12-01'),
(104, 'Weighted Blanket', 50, 5, '2025-12-02'),
(105, 'Smartwatch', 200, 2, '2025-12-02'),
(101, 'Deluxe Coffee Maker', 120, 2, '2025-12-03'),
(102, 'Bluetooth Speaker', 80, 1, '2025-12-03'),
(103, 'Ergonomic Mouse', 25, 8, '2025-12-04'),
(104, 'Weighted Blanket', 50, 1, '2025-12-04'),
(105, 'Smartwatch', 200, 1, '2025-12-05'),
(101, 'Deluxe Coffee Maker', 120, 4, '2025-12-05'),
(102, 'Bluetooth Speaker', 80, 5, '2025-12-06'),
(103, 'Ergonomic Mouse', 25, 2, '2025-12-06'),
(104, 'Weighted Blanket', 50, 6, '2025-12-07'),
(105, 'Smartwatch', 200, 1, '2025-12-07'),
(101, 'Deluxe Coffee Maker', 120, 1, '2025-12-08'),
(102, 'Bluetooth Speaker', 80, 1, '2025-12-08'),
(103, 'Ergonomic Mouse', 25, 5, '2025-12-09'),
(104, 'Weighted Blanket', 50, 2, '2025-12-09'),
(105, 'Smartwatch', 200, 1, '2025-12-10');


INSERT INTO Sales (product_id, product_name, price, quanity, date) VALUES
-- --- Previous Month (November 2025) Data - Demonstrates WHERE clause ---
(101, 'Deluxe Coffee Maker', 120, 1, '2025-11-15'),
(102, 'Bluetooth Speaker', 80, 2, '2025-11-15'),
(103, 'Ergonomic Mouse', 25, 10, '2025-11-16'),
(104, 'Weighted Blanket', 50, 5, '2025-11-16'),
(105, 'Smartwatch', 200, 3, '2025-11-17'),
(101, 'Deluxe Coffee Maker', 120, 3, '2025-11-18'),
(102, 'Bluetooth Speaker', 80, 4, '2025-11-19'),
(103, 'Ergonomic Mouse', 25, 15, '2025-11-20'),
(104, 'Weighted Blanket', 50, 10, '2025-11-21'),
(105, 'Smartwatch', 200, 5, '2025-11-22');


INSERT INTO Sales (product_id, product_name, price, quanity, date) VALUES
-- --- CURRENT MONTH (December 2025) Data ---
(101, 'Deluxe Coffee Maker', 120, 1, '2025-12-01'),
(102, 'Bluetooth Speaker', 80, 3, '2025-12-01'),
(103, 'Ergonomic Mouse', 25, 10, '2025-12-01'),
(104, 'Weighted Blanket', 50, 5, '2025-12-02'),
(105, 'Smartwatch', 200, 2, '2025-12-02'),
(101, 'Deluxe Coffee Maker', 120, 2, '2025-12-03'),
(102, 'Bluetooth Speaker', 80, 1, '2025-12-03'),
(103, 'Ergonomic Mouse', 25, 8, '2025-12-04'),
(104, 'Weighted Blanket', 50, 1, '2025-12-04'),
(105, 'Smartwatch', 200, 1, '2025-12-05'),
(101, 'Deluxe Coffee Maker', 120, 4, '2025-12-05'),
(102, 'Bluetooth Speaker', 80, 5, '2025-12-06'),
(103, 'Ergonomic Mouse', 25, 2, '2025-12-06'),
(104, 'Weighted Blanket', 50, 6, '2025-12-07'),
(105, 'Smartwatch', 200, 1, '2025-12-07'),
(101, 'Deluxe Coffee Maker', 120, 1, '2025-12-08'),
(102, 'Bluetooth Speaker', 80, 1, '2025-12-08'),
(103, 'Ergonomic Mouse', 25, 5, '2025-12-09'),
(104, 'Weighted Blanket', 50, 2, '2025-12-09'),
(105, 'Smartwatch', 200, 1, '2025-12-10'),

-- --- Previous Month (November 2025) Data ---
(101, 'Deluxe Coffee Maker', 120, 1, '2025-11-15'),
(102, 'Bluetooth Speaker', 80, 2, '2025-11-15'),
(103, 'Ergonomic Mouse', 25, 10, '2025-11-16'),
(104, 'Weighted Blanket', 50, 5, '2025-11-16'),
(105, 'Smartwatch', 200, 3, '2025-11-17'),
(101, 'Deluxe Coffee Maker', 120, 3, '2025-11-18'),
(102, 'Bluetooth Speaker', 80, 4, '2025-11-19'),
(103, 'Ergonomic Mouse', 25, 15, '2025-11-20'),
(104, 'Weighted Blanket', 50, 10, '2025-11-21'),
(105, 'Smartwatch', 200, 5, '2025-11-22'),

-- --- Earlier Historical Data (October 2025) ---
(101, 'Deluxe Coffee Maker', 120, 1, '2025-10-05'),
(102, 'Bluetooth Speaker', 80, 3, '2025-10-06'),
(103, 'Ergonomic Mouse', 25, 10, '2025-10-07'),
(104, 'Weighted Blanket', 50, 2, '2025-10-08'),
(105, 'Smartwatch', 200, 1, '2025-10-09'),
(101, 'Deluxe Coffee Maker', 120, 2, '2025-10-10'),
(102, 'Bluetooth Speaker', 80, 2, '2025-10-11'),
(103, 'Ergonomic Mouse', 25, 5, '2025-10-12'),
(104, 'Weighted Blanket', 50, 8, '2025-10-13'),
(105, 'Smartwatch', 200, 2, '2025-10-14');
