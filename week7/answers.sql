-- 📝 Week 7 Assignment: Database Design and Normalization

-- 🛠️ Question 1: Achieving First Normal Form (1NF)
-- Original table ProductDetail has a multivalued column 'Products' which violates 1NF
-- We transform it by creating one row per product per order

-- Step 1: Create a normalized ProductDetail_1NF table
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);

-- Step 2: Insert data into the 1NF table (each product gets its own row)
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (103, 'Emily Clark', 'Phone');

-- ✅ Each row now contains only atomic values — fully normalized to 1NF.

-- 🧩 Question 2: Achieving Second Normal Form (2NF)
-- The original OrderDetails table has a partial dependency (CustomerName depends only on OrderID)
-- We break this into two tables: Orders and OrderItems

-- Step 1: Create the Orders table with OrderID and CustomerName
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Step 2: Insert unique orders (removing duplication of CustomerName)
INSERT INTO Orders (OrderID, CustomerName) VALUES (101, 'John Doe');
INSERT INTO Orders (OrderID, CustomerName) VALUES (102, 'Jane Smith');
INSERT INTO Orders (OrderID, CustomerName) VALUES (103, 'Emily Clark');

-- Step 3: Create the OrderItems table (OrderID + Product is the composite key)
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Step 4: Insert the itemized order records
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (101, 'Mouse', 1);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (102, 'Tablet', 3);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (102, 'Mouse', 2);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (103, 'Phone', 1);

-- ✅ Now every non-key attribute depends on the whole primary key — fully normalized to 2NF.
