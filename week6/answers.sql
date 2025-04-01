-- 📝 Week 6 Assignment: Joins and Relationships

-- 🧑‍💼 Question 1: Get employee names, emails, and their officeCode
-- Using INNER JOIN between employees and offices on officeCode
SELECT 
    employees.firstName, 
    employees.lastName, 
    employees.email, 
    employees.officeCode
FROM employees
INNER JOIN offices 
    ON employees.officeCode = offices.officeCode;

-- 🛍️ Question 2: Get productName, productVendor, and productLine
-- Using LEFT JOIN between products and productlines on productLine
SELECT 
    p.productName, 
    p.productVendor, 
    p.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;

-- 📦 Question 3: Get the orderDate, shippedDate, status, and customerNumber for first 10 orders
-- Using RIGHT JOIN between customers and orders on customerNumber
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
