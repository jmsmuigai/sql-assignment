-- 1. Retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;

-- 2. Get orderDate, requiredDate, and status of orders that are 'In Process'
-- Sorting in descending order of orderDate
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- 3. Show firstName, lastName, and email of employees who are 'Sales Rep'
-- Ordered by employeeNumber in descending order
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- 4. Retrieve all records and columns from the offices table
SELECT *
FROM offices;

-- 5. Fetch productName and quantityInStock
-- Sort by buyPrice in ascending order and limit to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
