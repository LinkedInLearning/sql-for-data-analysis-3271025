SELECT OrderID,
  CreationDate
FROM Orders
WHERE Month(CreationDate) = 5
  AND Year(CreationDate) = '2016'