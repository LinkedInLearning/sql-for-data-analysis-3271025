SELECT Year(CreationDate) as OrderYear,
  Month(CreationDate) as OrderMonth,
  Day(CreationDate) as OrderDay
FROM Orders