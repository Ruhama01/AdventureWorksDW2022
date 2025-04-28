{{ config(materialized='view') }}

SELECT
    CustomerKey,
    FirstName,
    LastName,
    GeographyKey
    -- Add other relevant columns
FROM AdventureWorksDW2022.dbo.DimCustomer;