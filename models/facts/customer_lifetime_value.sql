SELECT
  c.CustomerKey,
  c.FirstName,
  c.LastName,
  SUM(s.SalesAmount) AS CustomerLifetimeValue
FROM FactInternetSales s
JOIN DimCustomer c ON s.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
