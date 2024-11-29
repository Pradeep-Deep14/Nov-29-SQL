CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO products (product_id, product_name, city) VALUES
(1, 'Laptop', 'Delhi'),
(2, 'Mobile', 'Mumbai'),
(3, 'Tablet', 'Delhi');




SELECT * FROM PRODUCTS


/*
Write a SQL query to list all distinct cities in the products table.
*/

SELECT DISTINCT CITY
FROM PRODUCTS