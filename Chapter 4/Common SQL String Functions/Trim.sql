SELECT TRIM('M'FROM ProductCode) AS TrimmedProductCode
FROM Product;

-- working only leading and trailing
SELECT TRIM('0' FROM ProductCode) FROM Product;
