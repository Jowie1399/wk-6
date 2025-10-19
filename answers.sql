-- ===========================================================
-- 📚 SQL ASSIGNMENT – JOIN OPERATIONS
-- ===========================================================
-- This script demonstrates the use of INNER JOIN, LEFT JOIN, 
-- and RIGHT JOIN across different tables.
-- ===========================================================


-- ===========================================================
-- 🧑‍💼 QUESTION 1: INNER JOIN employees and offices
-- ===========================================================
-- Task:
-- Retrieve firstName, lastName, email, and officeCode 
-- of all employees by joining employees and offices 
-- tables using the officeCode column.

SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    e.officeCode
FROM employees AS e
INNER JOIN offices AS o 
    ON e.officeCode = o.officeCode;

-- ===========================================================
-- 🛍️ QUESTION 2: LEFT JOIN products and productlines
-- ===========================================================
-- Task:
-- Retrieve productName, productVendor, and productLine 
-- from products table and join with productlines table 
-- using the productLine column.
-- LEFT JOIN ensures all products appear even if they 
-- don’t have a matching productLine.

SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM products AS p
LEFT JOIN productlines AS pl 
    ON p.productLine = pl.productLine;

-- ===========================================================
-- 📦 QUESTION 3: RIGHT JOIN customers and orders
-- ===========================================================
-- Task:
-- Retrieve orderDate, shippedDate, status, and customerNumber 
-- for the first 10 orders.
-- RIGHT JOIN ensures all orders appear even if a customer 
-- record is missing.

SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;

-- ===========================================================
-- 🚀 END OF ASSIGNMENT
-- ===========================================================
