{{ config(materialized='table') }}

SELECT
    SalesTerritoryKey,
    SalesTerritoryRegion,
    SalesTerritoryCountry
    -- Add other relevant sales territory attributes
FROM {{ ref('stg_adventureworks_sales_territories') }}