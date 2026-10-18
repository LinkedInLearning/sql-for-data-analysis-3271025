-- Select order-level information and recalculate totals from items
SELECT
  OrderItem.OrderId,                   -- the ID of the order
  Orders.TotalDue,                     -- the total amount stored in the Orders 
  SUM(Price * Quantity) as NewTotalDue -- new total, calculated by summing each
-- product's price X quantity
-- Start from the OrderItem table (contains line items of each order)
FROM OrderItem
-- Bring in product information, to get the Price for each item
  JOIN Product
    ON OrderItem.ProductID = Product.ProductID
-- Bring in order-level information (e.g. stored TotalDue)
  JOIN Orders
    ON OrderItem.OrderID = Orders.OrderID
-- Group results so that each order is represented once
-- Required because we're using SUM() across multiple order items
GROUP BY
  OrderItem.OrderId,
  Orders.TotalDue;