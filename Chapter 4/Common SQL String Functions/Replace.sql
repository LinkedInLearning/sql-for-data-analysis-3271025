SELECT ProductCode,
  REPLACE(ProductCode, 'BLU', 'BLE') as NewProductCode
FROM Product