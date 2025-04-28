{{ config(materialized='view') }}

SELECT
    SalesTerritoryKey,
    SalesTerritoryRegion,
    SalesTerritoryCountry
    -- Add other relevant columns
FROM AdventureWorksDW2022.dbo.DimSalesTerritory;