-- can you now add the inserts and plz have at least 10 rows in customers and products table 
-- with 10 orders and at least 5 line item order details per order

-- Here is the complete DDL and sample data for your Meetup database in Microsoft SQL Server, with at least 10 rows in Customers and Products, 
-- 10 orders, and at least 5 line items per order:

--This script will create the tables, add primary and foreign keys, and populate the tables with sample data as requested

-- Create Meetup database
CREATE DATABASE Meetup;
GO

USE Meetup;
GO

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Description NVARCHAR(255),
    Price DECIMAL(10,2)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

-- Create OrderDetail table
CREATE TABLE OrderDetail (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    CONSTRAINT FK_OrderDetail_Orders FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),
    CONSTRAINT FK_OrderDetail_Products FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);

-- Insert Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES
('Alice', 'Smith', 'alice.smith@email.com', '555-1001'),
('Bob', 'Johnson', 'bob.johnson@email.com', '555-1002'),
('Carol', 'Williams', 'carol.williams@email.com', '555-1003'),
('David', 'Brown', 'david.brown@email.com', '555-1004'),
('Eve', 'Jones', 'eve.jones@email.com', '555-1005'),
('Frank', 'Garcia', 'frank.garcia@email.com', '555-1006'),
('Grace', 'Martinez', 'grace.martinez@email.com', '555-1007'),
('Hank', 'Davis', 'hank.davis@email.com', '555-1008'),
('Ivy', 'Lopez', 'ivy.lopez@email.com', '555-1009'),
('Jack', 'Gonzalez', 'jack.gonzalez@email.com', '555-1010');

-- Insert Products
INSERT INTO Products (ProductName, Description, Price) VALUES
('T-Shirt', 'Meetup branded T-shirt', 20.00),
('Mug', 'Ceramic coffee mug', 10.00),
('Sticker Pack', 'Set of 10 stickers', 5.00),
('Notebook', 'Spiral notebook', 8.00),
('Pen', 'Ballpoint pen', 2.00),
('Water Bottle', 'Reusable bottle', 15.00),
('Hat', 'Meetup branded hat', 18.00),
('Backpack', 'Canvas backpack', 35.00),
('Lanyard', 'Meetup lanyard', 3.00),
('Keychain', 'Metal keychain', 4.00);

-- Insert Orders (10 orders, one per customer)
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-11-01', 50.00),
(2, '2025-11-02', 60.00),
(3, '2025-11-03', 55.00),
(4, '2025-11-04', 70.00),
(5, '2025-11-05', 65.00),
(6, '2025-11-06', 80.00),
(7, '2025-11-07', 75.00),
(8, '2025-11-08', 90.00),
(9, '2025-11-09', 85.00),
(10, '2025-11-10', 100.00);

-- Insert OrderDetails (at least 5 line items per order)
INSERT INTO OrderDetail (OrderID, ProductID, Quantity, UnitPrice) VALUES
-- Order 1
(1, 1, 1, 20.00),
(1, 2, 2, 10.00),
(1, 3, 3, 5.00),
(1, 4, 1, 8.00),
(1, 5, 5, 2.00),
-- Order 2
(2, 6, 2, 15.00),
(2, 7, 1, 18.00),
(2, 8, 1, 35.00),
(2, 9, 3, 3.00),
(2, 10, 2, 4.00),
-- Order 3
(3, 1, 2, 20.00),
(3, 3, 4, 5.00),
(3, 5, 2, 2.00),
(3, 7, 1, 18.00),
(3, 9, 2, 3.00),
-- Order 4
(4, 2, 3, 10.00),
(4, 4, 2, 8.00),
(4, 6, 1, 15.00),
(4, 8, 2, 35.00),
(4, 10, 1, 4.00),
-- Order 5
(5, 1, 1, 20.00),
(5, 2, 1, 10.00),
(5, 3, 2, 5.00),
(5, 4, 3, 8.00),
(5, 5, 4, 2.00),
-- Order 6
(6, 6, 3, 15.00),
(6, 7, 2, 18.00),
(6, 8, 1, 35.00),
(6, 9, 2, 3.00),
(6, 10, 3, 4.00),
-- Order 7
(7, 1, 2, 20.00),
(7, 3, 1, 5.00),
(7, 5, 3, 2.00),
(7, 7, 2, 18.00),
(7, 9, 1, 3.00),
-- Order 8
(8, 2, 2, 10.00),
(8, 4, 1, 8.00),
(8, 6, 2, 15.00),
(8, 8, 3, 35.00),
(8, 10, 2, 4.00),
-- Order 9
(9, 1, 1, 20.00),
(9, 2, 2, 10.00),
(9, 3, 2, 5.00),
(9, 4, 2, 8.00),
(9, 5, 3, 2.00),
-- Order 10
(10, 6, 2, 15.00),
(10, 7, 1, 18.00),
(10, 8, 2, 35.00),
(10, 9, 2, 3.00),
(10, 10, 1, 4.00);