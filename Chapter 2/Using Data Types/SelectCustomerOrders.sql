SELECT Customer.CustomerID,
  FirstName,
  LastName,
  Sum(TotalDue)
From Customer
  JOIN Orders on 
  Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
  -- Click on Run on active connection to run