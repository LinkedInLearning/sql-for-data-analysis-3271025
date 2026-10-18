-- Select customer identity details and count how many times
-- each unique combination of these fields appears
SELECT 
  FirstName,  
  LastName,
  Address,
  City,
  State,
  Zipcode,
  COUNT(1)  -- number of rows that share the exact same values
FROM Customer
GROUP BY 
  FirstName,
  LastName,
  Address,
  City,
  State,
  Zipcode
-- Keep only the groups that appear more than once.
-- In other words, only return customers where *all six fields*
-- are duplicated across multiple rows.
HAVING COUNT(1) > 1;