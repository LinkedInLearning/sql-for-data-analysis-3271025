SELECT UPPER(
    CONCAT(
      Address,
      ' ',
      City,
      ', ',
      State,
      ' ',
      Zipcode
    )
  ) AS NEW_ADDRESS
from Customer
LIMIT 10