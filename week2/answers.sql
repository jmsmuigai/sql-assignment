-- 📝 Week 2 Assignment: Introduction to SQL and Basic Queries

-- 🎯 Question 1: Retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;

-- 🎯 Question 2: Retrieve orderDate, requiredDate, and status of orders that are 'In Process'
-- Sort results in descending order of orderDate
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- 🎯 Question 3: Display firstName, lastName, and email of employees with job title 'Sales Rep'
-- Order results in descending order of employeeNumber
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- 🎯 Question 4: Retrieve all records and columns from the offices table
SELECT *
FROM offices;

-- 🎯 Question 5: Fetch productName and quantityInStock
-- Sort by buyPrice (ascending) and limit output to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
