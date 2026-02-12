CREATE DATABASE product_db;
USE product_db;

CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    rating DECIMAL(2,1),
    in_stock VARCHAR(5)   -- Yes / No
);

ALTER TABLE product
RENAME COLUMN product_name TO pname;

INSERT INTO product 
(product_name, category, brand, price, quantity, rating, in_stock) 
VALUES
('Laptop', 'Electronics', 'Dell', 65000, 10, 4.5, 'Yes'),
('Mobile', 'Electronics', 'Samsung', 30000, 0, 4.2, 'No'),
('Headphones', 'Accessories', 'Boat', 2000, 50, 4.1, 'Yes'),
('Smart Watch', 'Electronics', 'Apple', 45000, 5, 4.8, 'Yes'),
('Keyboard', 'Accessories', 'Logitech', 1500, 20, 4.0, 'Yes'),
('Mouse', 'Accessories', 'HP', 800, 30, 3.9, 'Yes'),
('TV', 'Electronics', 'Sony', 55000, 3, 4.6, 'Yes'),
('Fridge', 'Appliances', 'LG', 42000, 2, 4.4, 'Yes'),
('Washing Machine', 'Appliances', 'Samsung', 38000, 1, 4.3, 'No'),
('Air Conditioner', 'Appliances', 'Voltas', 48000, 4, 4.5, 'Yes');
  
  -- QUERIES ON  OPERATORS

-- 1.WAQTD DETAILS OF THE PRODUCTS WORKING AS ELECTRONICS AND PRICED LESS THAN 30000

SELECT *
FROM Product
WHERE category = 'Electronics' AND price < 30000;

-- 2.WAQTD PRODUCT_NAME AND BRAND OF THE PRODUCTS BELONGING TO CATEGORY ‘ACCESSORIES’ AND HAVING QUANTITY GREATER THAN 20

SELECT pname, brand
FROM Product
WHERE category = 'Accessories' AND quantity > 20;

-- 3.WAQTD DETAILS OF THE PRODUCTS ALONG WITH ANNUAL PRICE (PRICE * 12) IF THEY ARE IN CATEGORY ‘ELECTRONICS’ AND THEIR ANNUAL PRICE HAS TO BE GREATER THAN 500000

SELECT *, price*12 AS Annual_Price
FROM Product
WHERE category = 'Electronics' AND price*12 > 500000;

-- 4.WAQTD ALL THE DETAILS OF THE PRODUCTS BELONGING TO CATEGORY ‘APPLIANCES’ OR HAVING RATING GREATER THAN 4.5

SELECT *
FROM Product
WHERE category = 'Appliances' OR rating > 4.5;

-- 5.WAQTD NAMES OF THE PRODUCTS WHOSE PRICE IS LESS THAN 2000 AND THEIR CATEGORY IS ‘ACCESSORIES’

SELECT pname
FROM Product
WHERE price < 2000 AND category = 'Accessories';

-- 6.WAQTD PRODUCT_NAME, PRICE, ANNUAL PRICE AND CATEGORY IF CATEGORY IS ‘ELECTRONICS’ PRICED MORE THAN 30000 AND ANNUAL PRICE EXCEEDS 400000

SELECT pname, price, price*12 AS Annual_Price, category
FROM Product
WHERE category = 'Electronics' AND price > 30000 AND price*12 > 400000;

-- 7.WAQTD PRODUCT_ID AND PRODUCT_NAME OF THE PRODUCTS BELONGING TO BRAND ‘SAMSUNG’ AND CATEGORY ‘ELECTRONICS’

SELECT product_id, pname
FROM Product
WHERE brand = 'Samsung' AND category = 'Electronics';

-- 8.WAQTD DETAILS OF PRODUCTS BELONGING TO CATEGORY ‘ELECTRONICS’ OR ‘APPLIANCES’

SELECT *
FROM Product
WHERE category = 'Electronics' OR category = 'Appliances';

-- 9.WAQTD DETAILS OF PRODUCTS BELONGING TO CATEGORY ‘ACCESSORIES’ AND HAVING RATING GREATER THAN 4.0

SELECT *
FROM Product
WHERE category = 'Accessories' AND rating > 4.0;

-- 10.WAQTD DETAILS OF PRODUCT WORKING AS ‘APPLE’ BRAND WITH PRICE OF RUPEES 45000


SELECT *
FROM Product
WHERE brand = 'Apple' AND price = 45000;

 -- 11.WAQTD PRODUCT_NAME, CATEGORY AND BRAND OF PRODUCTS BELONGING TO CATEGORY ‘ACCESSORIES’ IN BRAND ‘HP’ OR ‘LOGITECH’


SELECT pname, category, brand
FROM Product
WHERE category = 'Accessories' AND (brand = 'HP' OR brand = 'Logitech');

-- 12.WAQTD DETAILS OF PRODUCTS BELONGING TO CATEGORY ‘ELECTRONICS’ OR ‘ACCESSORIES’ AND IN STOCK = ‘YES’


SELECT *
FROM Product
WHERE (category = 'Electronics' OR category = 'Accessories') AND in_stock = 'Yes';

-- 13.WAQTD NAMES OF PRODUCTS BELONGING TO CATEGORY ‘ELECTRONICS’, ‘ACCESSORIES’, ‘APPLIANCES’


SELECT pname
FROM Product
WHERE category ='Electronics' OR category = 'Accessories' OR category= 'Appliances';

-- 14.WAQTD DETAILS OF PRODUCTS WITH PRODUCT_ID 1, 3, 5

SELECT *
FROM Product
WHERE product_id = 1 OR product_id = 3 OR product_id = 5;

-- 15.WAQTD DETAILS OF PRODUCTS BELONGING TO BRAND ‘DELL’ OR ‘APPLE’ OR ‘SAMSUNG’

SELECT *
FROM Product
WHERE brand ='Dell' OR brand = 'Apple' OR brand = 'Samsung';

-- 16.WAQTD NAMES OF PRODUCTS ADDED WITH RATING GREATER THAN 4.0 AND LESS THAN 4.8


SELECT pname
FROM Product
WHERE rating > 4.0 AND rating < 4.8;

-- 17.WAQTD DETAILS OF PRODUCTS PRICED MORE THAN 1000 BUT LESS THAN 40000

SELECT *
FROM Product
WHERE price > 1000 AND price < 40000;

-- 18.WAQTD NAMES OF PRODUCTS BELONGING TO CATEGORY ‘ELECTRONICS’ OR ‘APPLIANCES’ AND IN STOCK = ‘YES’

SELECT pname
FROM Product
WHERE (category = 'Electronics' OR category = 'Appliances') AND in_stock = 'Yes';

-- 19.WAQTD NAMES OF PRODUCTS ALONG WITH ANNUAL PRICE FOR PRODUCTS BELONGING TO CATEGORY ‘ACCESSORIES’ OR ‘ELECTRONICS’ AND IN STOCK = ‘YES’

SELECT pname, price*12 AS Annual_Price
FROM Product
WHERE (category = 'Accessories' OR category = 'Electronics') AND in_stock = 'Yes';


-- 20.WAQTD ALL THE DETAILS OF PRODUCTS ALONG WITH ANNUAL PRICE IF PRICE IS BETWEEN 1000 AND 50000 AND ANNUAL PRICE IS MORE THAN 150000


SELECT *, price*12 AS Annual_Price
FROM Product
WHERE price >= 1000 AND price <= 50000 AND price*12 > 150000;