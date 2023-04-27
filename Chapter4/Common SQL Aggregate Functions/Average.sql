SELECT State,
  AVG(TotalDue) as Avg_Due
FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State
ORDER BY Avg_Due DESC;