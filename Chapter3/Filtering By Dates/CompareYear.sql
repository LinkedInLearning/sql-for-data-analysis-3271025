SELECT OrderID, 
Month(CreationDate) as Order_Month, 
Year(CreationDate) as Order_Year, 
TotalDue, 
Status FROM Orders 
WHERE Year(CreationDate) = 2015
Order by Order_Month, Order_Year
