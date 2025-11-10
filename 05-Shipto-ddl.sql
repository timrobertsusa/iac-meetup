-- can you add an ShipToAddress table with multiple addresses per customer 
-- some with 1 shiptoaddress and some with upto 3 shipto addresses per customer

-- Create ShipToAddress table
CREATE TABLE ShipToAddress (
    ShipToAddressID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    AddressLine1 NVARCHAR(100),
    AddressLine2 NVARCHAR(100),
    City NVARCHAR(50),
    State NVARCHAR(50),
    PostalCode NVARCHAR(20),
    Country NVARCHAR(50),
    CONSTRAINT FK_ShipToAddress_Customers FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

-- Insert ShipToAddress data
-- Customer 1: 1 address
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(1, '123 Main St', NULL, 'Springfield', 'IL', '62701', 'USA');

-- Customer 2: 2 addresses
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(2, '456 Oak Ave', NULL, 'Chicago', 'IL', '60616', 'USA'),
(2, '789 Pine Rd', 'Apt 2', 'Chicago', 'IL', '60616', 'USA');

-- Customer 3: 3 addresses
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(3, '101 Maple St', NULL, 'Peoria', 'IL', '61602', 'USA'),
(3, '202 Elm St', NULL, 'Peoria', 'IL', '61602', 'USA'),
(3, '303 Cedar St', 'Suite 5', 'Peoria', 'IL', '61602', 'USA');

-- Customer 4: 1 address
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(4, '404 Birch St', NULL, 'Decatur', 'IL', '62521', 'USA');

-- Customer 5: 2 addresses
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(5, '505 Walnut St', NULL, 'Bloomington', 'IL', '61701', 'USA'),
(5, '606 Chestnut St', NULL, 'Bloomington', 'IL', '61701', 'USA');

-- Customer 6: 1 address
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(6, '707 Poplar St', NULL, 'Urbana', 'IL', '61801', 'USA');

-- Customer 7: 3 addresses
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(7, '808 Spruce St', NULL, 'Champaign', 'IL', '61820', 'USA'),
(7, '909 Willow St', NULL, 'Champaign', 'IL', '61820', 'USA'),
(7, '1010 Aspen St', 'Unit B', 'Champaign', 'IL', '61820', 'USA');

-- Customer 8: 1 address
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(8, '1111 Fir St', NULL, 'Rockford', 'IL', '61101', 'USA');

-- Customer 9: 2 addresses
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(9, '1212 Sycamore St', NULL, 'Aurora', 'IL', '60505', 'USA'),
(9, '1313 Hickory St', NULL, 'Aurora', 'IL', '60505', 'USA');

-- Customer 10: 1 address
INSERT INTO ShipToAddress (CustomerID, AddressLine1, AddressLine2, City, State, PostalCode, Country) VALUES
(10, '1414 Redwood St', NULL, 'Joliet', 'IL', '60431', 'USA');