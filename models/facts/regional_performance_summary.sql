{{
  config(
    materialized='table',
    description="This table summarizes sales performance by region, including total sales and unique customers."
  )
}}
SELECT
  t.ref{{'dim_sales_territories'}}.SalesTerritoryCountry,
  t.ref{{'dim_sales_territories'}}.SalesTerritoryRegion,
  t.SalesTerritoryRegion,
  SUM(s.SalesAmount) AS RegionalSales,
  COUNT(DISTINCT s.CustomerKey) AS UniqueCustomers
FROM FactInternetSales s
JOIN DimSalesTerritory t ON s.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryCountry, t.SalesTerritoryRegion
