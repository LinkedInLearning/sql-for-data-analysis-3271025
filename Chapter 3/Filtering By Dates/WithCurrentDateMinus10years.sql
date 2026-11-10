SELECT OrderID, CreationDate
FROM Orders
Where Year(CreationDate) > (Year(Now()) - 10); 
-- more than past 10 years now 