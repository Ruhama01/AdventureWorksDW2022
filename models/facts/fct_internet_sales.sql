{{ config(materialized='table') }}

SELECT
    s.SalesOrderNumber,
    s.SalesOrderLineNumber,
    s.OrderQuantity,
    s.UnitPrice,
    s.SalesAmount,
    s.UnitPriceDiscountPct,
    s.TotalProductCost,
    {{ ref('dim_products') }}.ProductKey,
    {{ ref('dim_customers') }}.CustomerKey,
    {{ ref('dim_dates') }}.DateKey AS OrderDateKey,
    {{ ref('dim_sales_territories') }}.SalesTerritoryKey,
    {{ ref('dim_currencies') }}.CurrencyKey
    -- Add other relevant fact columns
FROM {{ ref('stg_adventureworks_internet_sales') }} AS s
JOIN {{ ref('dim_products') }} ON s.ProductKey = {{ ref('dim_products') }}.ProductKey
JOIN {{ ref('dim_customers') }} ON s.CustomerKey = {{ ref('dim_customers') }}.CustomerKey
JOIN {{ ref('dim_dates') }} ON s.OrderDateKey = {{ ref('dim_dates') }}.DateKey
LEFT JOIN {{ ref('dim_sales_territories') }} ON s.SalesTerritoryKey = {{ ref('dim_sales_territories') }}.SalesTerritoryKey
LEFT JOIN {{ ref('dim_currencies') }} ON s.CurrencyKey = {{ ref('dim_currencies') }}.CurrencyKey;