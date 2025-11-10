--can you give me DDL to create Meetup Db in MS sql. tables: Customers, Products, Orders, OrderDetail. 
-- Insert ddl to populate the tables

-- Here is the DDL to create the Meetup database and the tables Customers, Products, Orders, and OrderDetail 
-- in Microsoft SQL Server, along with sample insert statements to populate each table:

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
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    OrderDate DATETIME,
    TotalAmount DECIMAL(10,2)
);

-- Create OrderDetail table
CREATE TABLE OrderDetail (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT,
    UnitPrice DECIMAL(10,2)
);

-- Insert sample data into Customers
INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES
('Alice', 'Smith', 'alice.smith@email.com', '555-1234'),
('Bob', 'Johnson', 'bob.johnson@email.com', '555-5678'),
('Carol', 'Williams', 'carol.williams@email.com', '555-8765');

-- Insert sample data into Products
INSERT INTO Products (ProductName, Description, Price) VALUES
('T-Shirt', 'Meetup branded T-shirt', 20.00),
('Mug', 'Ceramic coffee mug', 10.00),
('Sticker Pack', 'Set of 10 stickers', 5.00);

-- Insert sample data into Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-11-01', 30.00),
(2, '2025-11-02', 15.00);

-- Insert sample data into OrderDetail
INSERT INTO OrderDetail (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 20.00),   -- Alice bought 1 T-Shirt
(1, 2, 1, 10.00),   -- Alice bought 1 Mug
(2, 3, 3, 5.00);    -- Bob bought 3 Sticker Packs

--This will create the database and tables, and insert some sample records for demonstration
