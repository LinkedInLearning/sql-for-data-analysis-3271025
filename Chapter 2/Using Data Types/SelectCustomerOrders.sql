SELECT Customer.CustomerID,
  FirstName,
  LastName,
  TotalDue
From Customer
  JOIN Orders on 
  Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
