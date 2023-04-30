CREATE VIEW V_Orders2 AS
Select CreationDate as 'OrderDate',
  CONCAT(FirstName, ' ', LastName) as Salesperson,
  Count(1) as 'Amount of Orders',
  SUM(TotalDue) as 'Total Due'
FROM Orders O
  JOIN Salesperson S on O.SalespersonID = S.SalespersonID
GROUP BY CreationDate CONCAT(FirstName, ' ', LastName);
,
SUM(TotalDue) as 'Total Due'
FROM Orders O
  JOIN Salesperson S on O.SalespersonID = S.SalespersonID
GROUP BY CreationDate,
  CONCAT(FirstName, ' ', LastName)