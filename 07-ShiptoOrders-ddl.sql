-- can you add ShiptoAddress to thte orders table based selecting 1 random ShiptToAddress from the Customers ShitoAddress

-- To add a ShipToAddressID column to the Orders table and assign a random address for each order from the customer's available addresses, follow these steps:

-- -- Alter the Orders table to add the ShipToAddressID column and foreign key.
-- -- Update each order to set ShipToAddressID to a random address for the corresponding customer.
-- -- Here is the SQL to accomplish this:

-- Add ShipToAddressID column to Orders table
ALTER TABLE Orders
ADD ShipToAddressID INT;

-- Add foreign key constraint
ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_ShipToAddress FOREIGN KEY (ShipToAddressID)
    REFERENCES ShipToAddress(ShipToAddressID);

-- Update each order with a random ShipToAddress for the customer
UPDATE Orders
SET ShipToAddressID = (
    SELECT TOP 1 ShipToAddressID
    FROM ShipToAddress
    WHERE ShipToAddress.CustomerID = Orders.CustomerID
    ORDER BY NEWID()
);

-- This will ensure each order is linked to a random shipping address belonging to the customer.
