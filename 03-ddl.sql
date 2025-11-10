--can you add primary keys and the foreign keys

--Certainly! Here is the updated DDL for Microsoft SQL Server, with explicit primary keys and foreign key constraints for the Meetup database tables:

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

-- This DDL ensures:

-- Each table has a primary key.
-- Orders.CustomerID is a foreign key referencing Customers.CustomerID.
-- OrderDetail.OrderID is a foreign key referencing Orders.OrderID.
-- OrderDetail.ProductID is a foreign key referencing Products.ProductID.
