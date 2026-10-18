SELECT c.CustomerID, c.FirstName, c.LastName
FROM Customer c
JOIN (
    SELECT FirstName, LastName
    FROM Customer
    GROUP BY FirstName, LastName
    HAVING COUNT(*) > 1
) d ON d.FirstName = c.FirstName AND d.LastName = c.LastName
ORDER BY c.LastName, c.FirstName, c.CustomerID;
