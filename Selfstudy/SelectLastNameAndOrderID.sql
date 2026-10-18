SELECT LastName,
  OrderId
FROM Customer
-- Join the Orders table to the Customer table
  JOIN Orders 
  on Customer.CustomerID = Orders.CustomerId;