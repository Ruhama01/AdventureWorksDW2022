{{ config(materialized='view') }}

SELECT
    CurrencyKey,
    CurrencyName
    -- Add other relevant columns
FROM AdventureWorksDW2022.dbo.DimCurrency;