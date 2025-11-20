SELECT State,
  City,
  count(*)
FROM Customer
GROUP BY State,
  City
order by State,
  City;