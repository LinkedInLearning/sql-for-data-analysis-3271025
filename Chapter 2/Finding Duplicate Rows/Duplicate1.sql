-- Select the customer information and how many orders they have
SELECT Customer.CustomerID,
  Customer.FirstName,       
  Customer.LastName,
  -- Total number of orders for each customer
  COUNT(1) as NUM_ORDERS
FROM Customer
-- Start with the Customer table, Join with the Orders table, matching each customer to their orders
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
-- Group rows so that each customer is one line in the result
-- Required because we've using count()
  GROUP BY Customer.CustomerID,
  Customer.FirstName,
  Customer.LastName
-- Sort the result by number of orders (Highest first)
ORDER BY NUM_ORDERS DESC