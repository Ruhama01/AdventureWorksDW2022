{{ config(materialized='view') }}

SELECT
    cust.CustomerKey,
    cust.FirstName,
    cust.LastName,
    geo.City,
    geo.StateProvinceName,
    geo.CountryRegionCode
    -- Add other relevant customer attributes
FROM {{ ref('stg_adventureworks_customers') }} AS cust
LEFT JOIN AdventureWorksDW2022.dbo.DimGeography AS geo
    ON cust.GeographyKey = geo.GeographyKey;