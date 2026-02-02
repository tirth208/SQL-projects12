CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

INSERT INTO Customers (Name, Email, Address) VALUES
('Alice', 'alice@gmail.com', 'Delhi'),
('Bob', 'bob@gmail.com', 'Mumbai'),
('Charlie', 'charlie@gmail.com', 'Pune'),
('David', 'david@gmail.com', 'Ahmedabad'),
('Alice', 'alice2@gmail.com', 'Jaipur');


SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Bangalore'
WHERE CustomerID = 2;

DELETE FROM Customers
WHERE CustomerID = 4;

SELECT * FROM Customers
WHERE Name = 'Alice';


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2026-01-05', 2500),
(2, '2026-01-10', 1800),
(3, '2026-01-15', 3200),
(1, '2026-01-20', 1500),
(5, '2026-01-25', 4000);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
SELECT * FROM Orders
WHERE CustomerID = 1;

UPDATE Orders
SET TotalAmount = 2800
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 2;

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT 
    MAX(TotalAmount) AS Highest,
    MIN(TotalAmount) AS Lowest,
    AVG(TotalAmount) AS Average
FROM Orders;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products (ProductName, Price, Stock) VALUES
('Laptop', 55000, 10),
('Mobile', 18000, 25),
('Headphones', 2500, 0),
('Keyboard', 1500, 30),
('Mouse', 800, 50);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 1, 1, 55000),
(1, 4, 2, 3000),
(3, 2, 1, 18000),
(4, 5, 3, 2400),
(5, 1, 1, 55000);

SELECT * FROM OrderDetails
WHERE OrderID = 1;

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

SELECT ProductID, COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 1;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

INSERT INTO Customers (Name, Email, Address) VALUES
('Alice', 'alice@gmail.com', 'Delhi'),
('Bob', 'bob@gmail.com', 'Mumbai'),
('Charlie', 'charlie@gmail.com', 'Pune'),
('David', 'david@gmail.com', 'Ahmedabad'),
('Alice', 'alice2@gmail.com', 'Jaipur');


SELECT * FROM Customers;

UPDATE Customers
SET Address = 'Bangalore'
WHERE CustomerID = 2;

DELETE FROM Customers
WHERE CustomerID = 4;

SELECT * FROM Customers
WHERE Name = 'Alice';


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2026-01-05', 2500),
(2, '2026-01-10', 1800),
(3, '2026-01-15', 3200),
(1, '2026-01-20', 1500),
(5, '2026-01-25', 4000);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
SELECT * FROM Orders
WHERE CustomerID = 1;

UPDATE Orders
SET TotalAmount = 2800
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 2;

SELECT * FROM Orders
WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT 
    MAX(TotalAmount) AS Highest,
    MIN(TotalAmount) AS Lowest,
    AVG(TotalAmount) AS Average
FROM Orders;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products (ProductName, Price, Stock) VALUES
('Laptop', 55000, 10),
('Mobile', 18000, 25),
('Headphones', 2500, 0),
('Keyboard', 1500, 30),
('Mouse', 800, 50);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 1, 1, 55000),
(1, 4, 2, 3000),
(3, 2, 1, 18000),
(4, 5, 3, 2400),
(5, 1, 1, 55000);

SELECT * FROM OrderDetails
WHERE OrderID = 1;

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;

SELECT ProductID, COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 1;
