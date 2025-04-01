-- Week 2 Assignment: Introduction to SQL and Basic Queries

-- 1. Retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;

-- 2. Retrieve orderDate, requiredDate, and status of orders that are 'In Process'
-- Sorted in descending order by orderDate
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- 3. Display firstName, lastName, and email of employees with jobTitle 'Sales Rep'
-- Sorted by employeeNumber in descending order
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- 4. Retrieve all columns and records from the offices table
SELECT *
FROM offices;

-- 5. Fetch productName and quantityInStock from the products table
-- Sort by buyPrice ascending and limit to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
