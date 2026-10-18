SELECT  FirstName,
        LastName,
        -- Number of rows for each (FirstName, LastName) Combination
        COUNT(1)
FROM Customer
GROUP BY  FirstName,
          LastName
          -- Only keep groups where the count is greater than 1
HAVING COUNT(1) > 1