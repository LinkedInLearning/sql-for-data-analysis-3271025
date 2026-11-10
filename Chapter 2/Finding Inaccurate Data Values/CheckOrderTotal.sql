SELECT OrderItem.OrderId,
  Orders.TotalDue, -- compare totalDue
  SUM(Price * Quantity) as NewTotalDue -- with newTortalDue
FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID
GROUP BY OrderItem.OrderId,
  Orders.TotalDue;