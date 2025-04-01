-- 📝 Week 4 Assignment: Advanced SQL Queries and Aggregations

-- 🎯 Question 1: Total payment amount per payment date (latest 5)
-- Group by paymentDate, sum the amount, and show top 5 recent payment dates
SELECT paymentDate, SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- 🎯 Question 2: Average credit limit of each customer (grouped by name and country)
-- Show customerName, country, and average creditLimit
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;

-- 🎯 Question 3: Total price of products ordered from orderdetails
-- Total = priceEach * quantityOrdered, grouped by productCode and quantity
SELECT productCode, quantityOrdered, SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- 🎯 Question 4: Highest payment amount per check number
-- Group by checkNumber and use MAX() to find the highest amount
SELECT checkNumber, MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
