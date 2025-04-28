{{ config(materialized='view') }}

SELECT
    SalesOrderNumber,
    SalesOrderLineNumber,
    ProductKey,
    CustomerKey,
    OrderDateKey,
    ShipDateKey,
    DueDateKey,
    SalesAmount,
    OrderQuantity,
    UnitPrice,
    UnitPriceDiscountPct,
    TotalProductCost,
    SalesTerritoryKey,
    CurrencyKey
    -- Add other relevant columns
FROM AdventureWorksDW2022.dbo.FactInternetSales;