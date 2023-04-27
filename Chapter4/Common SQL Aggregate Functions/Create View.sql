CREATE VIEW V_CustomerOrderSummary as
SELECT State,
  AVG(TotalDue) as Avg_Due,
  MIN(TotalDue) as Min_Due,
  MAX(TotalDue) as Max_Due,
  SUM(TotalDue) as Total_Sales
FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State