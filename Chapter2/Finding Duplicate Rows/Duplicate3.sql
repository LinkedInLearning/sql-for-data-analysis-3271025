SELECT FirstName,
  LastName,
  Address,
  City,
  State,
  Zipcode,
  COUNT(1)
FROM Customer
GROUP BY FirstName,
  LastName,
  Address,
  City,
  State,
  Zipcode
HAVING COUNT(1) > 1