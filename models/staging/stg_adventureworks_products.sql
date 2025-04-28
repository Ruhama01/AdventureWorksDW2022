{{ config(materialized='view') }}

SELECT
    ProductKey,
    EnglishProductName,
    ProductSubcategoryKey
    -- Add other relevant columns
FROM AdventureWorksDW2022.dbo.DimProduct;